class _patch(object):
    _active_patches = set()
    def start(self):
        """Activate a patch, returning any created mock."""
        result = self.__enter__()
        self._active_patches.add(self)
        return result
    def stop(self):
        """Stop an active patch."""
        self._active_patches.discard(self)
        return self.__exit__()

def _patch_stopall():
    """Stop all active patches."""
    for patch in list(_patch._active_patches):
        patch.stop()

def patch(...):
    pass
patch.stopall = _patch_stopall
