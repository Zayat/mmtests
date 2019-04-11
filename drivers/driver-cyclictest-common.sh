FINEGRAINED_SUPPORTED=yes
NAMEEXTRA=

run_bench() {
	if [ "$CYCLICTEST_PINNED" = "yes" ]; then
		CYCLICTEST_PINNED_PARAM="--affinity"
	fi
	CYCLICTEST_BACKGROUND_PARAM=
	if [ "$CYCLICTEST_BACKGROUND" != "" ]; then
		CYCLICTEST_BACKGROUND_PARAM="--background $CYCLICTEST_BACKGROUND"
	fi
	$SHELLPACK_INCLUDE/shellpack-bench-cyclictest $CYCLICTEST_PINNED_PARAM $CYCLICTEST_BACKGROUND_PARAM \
		--iterations $CYCLICTEST_ITERATIONS    \
		--duration   $CYCLICTEST_DURATION
	return $?
}
