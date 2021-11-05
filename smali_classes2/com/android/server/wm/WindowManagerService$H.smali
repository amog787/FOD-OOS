.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ALL_WINDOWS_DRAWN:I = 0x21

.field public static final ANIMATION_FAILSAFE:I = 0x3c

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CHECK_IF_BOOT_ANIMATION_FINISHED:I = 0x25

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x1e

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FORCE_GC:I = 0xf

.field public static final LAYOUT_AND_ASSIGN_WINDOW_LAYERS_IF_NEEDED:I = 0x3f

.field public static final NEW_ANIMATOR_SCALE:I = 0x22

.field public static final NOTIFY_ACTIVITY_DRAWN:I = 0x20

.field public static final ON_POINTER_DOWN_OUTSIDE_FOCUS:I = 0x3e

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final RECOMPUTE_FOCUS:I = 0x3d

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final RESET_ANR_MESSAGE:I = 0x26

.field public static final RESTORE_POINTER_ICON:I = 0x37

.field public static final SEAMLESS_ROTATION_TIMEOUT:I = 0x36

.field public static final SET_HAS_OVERLAY_UI:I = 0x3a

.field public static final SHOW_EMULATOR_DISPLAY_OVERLAY:I = 0x24

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x19

.field public static final UNUSED:I = 0x0

.field public static final UPDATE_ANIMATION_SCALE:I = 0x33

.field public static final UPDATE_MULTI_WINDOW_STACKS:I = 0x29

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WALLPAPER_DRAW_PENDING_TIMEOUT:I = 0x27

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb

.field public static final WINDOW_HIDE_TIMEOUT:I = 0x34

.field public static final WINDOW_REPLACEMENT_TIMEOUT:I = 0x2e

.field public static final WINDOW_STATE_BLAST_SYNC_TIMEOUT:I = 0x40


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowManagerService;

    .line 5054
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 5105
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_0

    .line 5106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: entry what="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WindowManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5108
    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v4, :cond_21

    if-eq v0, v3, :cond_1e

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x13

    if-eq v0, v3, :cond_1c

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_1a

    const/16 v3, 0x29

    if-eq v0, v3, :cond_18

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_16

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_14

    const/16 v3, 0x33

    if-eq v0, v3, :cond_10

    const/16 v3, 0x34

    if-eq v0, v3, :cond_f

    const/16 v3, 0x36

    if-eq v0, v3, :cond_e

    const/16 v3, 0x37

    if-eq v0, v3, :cond_d

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_b

    .line 5486
    :pswitch_0
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5487
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 5488
    .local v0, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->immediatelyNotifyBlastSync()V

    .line 5489
    .end local v0    # "ws":Lcom/android/server/wm/WindowState;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5479
    :pswitch_1
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5480
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 5481
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 5482
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5483
    goto/16 :goto_b

    .line 5482
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5472
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5473
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 5474
    .local v0, "touchedToken":Landroid/os/IBinder;
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v4, v0}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;)V

    .line 5475
    .end local v0    # "touchedToken":Landroid/os/IBinder;
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5476
    goto/16 :goto_b

    .line 5475
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5465
    :pswitch_3
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5466
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5468
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5469
    goto/16 :goto_b

    .line 5468
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5457
    :pswitch_4
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5458
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5459
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->scheduleFailsafe()V

    .line 5461
    :cond_1
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5462
    goto/16 :goto_b

    .line 5461
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5389
    :pswitch_5
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5390
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WallpaperController;

    .line 5392
    .local v0, "wallpaperController":Lcom/android/server/wm/WallpaperController;
    if-eqz v0, :cond_2

    .line 5393
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->processWallpaperDrawPendingTimeout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5394
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5396
    .end local v0    # "wallpaperController":Lcom/android/server/wm/WallpaperController;
    :cond_2
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5397
    goto/16 :goto_b

    .line 5396
    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5382
    :pswitch_6
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5383
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mLastANRState:Ljava/lang/String;

    .line 5384
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5385
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearSavedANRState()V

    .line 5386
    goto/16 :goto_b

    .line 5384
    :catchall_6
    move-exception v0

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5372
    :pswitch_7
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5373
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_BOOT_enabled:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_BOOT:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x7948488b

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5374
    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v0

    .line 5375
    .local v0, "bootAnimationComplete":Z
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5376
    if-eqz v0, :cond_2b

    .line 5377
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_b

    .line 5375
    .end local v0    # "bootAnimationComplete":Z
    :catchall_7
    move-exception v0

    :try_start_f
    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5313
    :pswitch_8
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showEmulatorDisplayOverlay()V

    .line 5314
    goto/16 :goto_b

    .line 5336
    :pswitch_9
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    .line 5337
    .local v3, "scale":F
    invoke-static {v3}, Landroid/animation/ValueAnimator;->setDurationScale(F)V

    .line 5338
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/Session;

    .line 5342
    .local v4, "session":Lcom/android/server/wm/Session;
    if-eqz v4, :cond_4

    .line 5343
    iget v0, v4, Lcom/android/server/wm/Session;->mUid:I

    const-string v5, "onAnimatorScaleChanged"

    invoke-static {v0, v5}, Lcom/android/server/am/OpBGFrozenInjector;->triggerResume(ILjava/lang/String;)V

    .line 5347
    :cond_4
    if-eqz v4, :cond_5

    .line 5349
    :try_start_10
    iget-object v0, v4, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v0, v3}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_0

    .line 5350
    :catch_0
    move-exception v0

    .line 5351
    :goto_0
    goto/16 :goto_b

    .line 5353
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 5355
    .local v5, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5356
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v0, v7, :cond_6

    .line 5357
    iget-object v7, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Session;

    iget-object v7, v7, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5360
    .end local v0    # "i":I
    :cond_6
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5361
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 5363
    :try_start_12
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowSessionCallback;

    invoke-interface {v0, v3}, Landroid/view/IWindowSessionCallback;->onAnimatorScaleChanged(F)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1

    .line 5365
    goto :goto_3

    .line 5364
    :catch_1
    move-exception v0

    .line 5361
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5368
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    .end local v6    # "i":I
    :cond_7
    goto/16 :goto_b

    .line 5360
    .restart local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :catchall_8
    move-exception v0

    :try_start_13
    monitor-exit v6
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5326
    .end local v3    # "scale":F
    .end local v4    # "session":Lcom/android/server/wm/Session;
    .end local v5    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IWindowSessionCallback;>;"
    :pswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 5327
    .local v3, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_14
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5328
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 5329
    .local v0, "callback":Ljava/lang/Runnable;
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5330
    if-eqz v0, :cond_2b

    .line 5331
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 5329
    .end local v0    # "callback":Ljava/lang/Runnable;
    :catchall_9
    move-exception v0

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5319
    .end local v3    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_b
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v0, v3}, Landroid/app/IActivityTaskManager;->notifyActivityDrawn(Landroid/os/IBinder;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_2

    .line 5321
    goto/16 :goto_b

    .line 5320
    :catch_2
    move-exception v0

    .line 5322
    goto/16 :goto_b

    .line 5308
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    invoke-static {v0, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;II)V

    .line 5309
    goto/16 :goto_b

    .line 5293
    :pswitch_d
    const/4 v3, 0x0

    .line 5294
    .local v3, "callback":Ljava/lang/Runnable;
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 5295
    .local v4, "container":Lcom/android/server/wm/WindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5296
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_8

    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v9, -0x5afec1f7

    const-string v10, "Timeout waiting for drawn: undrawn=%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v8, v9, v7, v10, v6}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5298
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_8
    iget-object v0, v4, Lcom/android/server/wm/WindowContainer;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5299
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallbacks:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 5300
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5301
    if-eqz v3, :cond_2b

    .line 5302
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_b

    .line 5300
    :catchall_a
    move-exception v0

    :try_start_18
    monitor-exit v5
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5288
    .end local v3    # "callback":Ljava/lang/Runnable;
    .end local v4    # "container":Lcom/android/server/wm/WindowContainer;
    :pswitch_e
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    .line 5289
    goto/16 :goto_b

    .line 5283
    :pswitch_f
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    .line 5284
    goto/16 :goto_b

    .line 5251
    :pswitch_10
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5252
    sget-boolean v0, Lcom/android/server/protolog/ProtoLog$Cache;->WM_ERROR_enabled:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/android/server/wm/ProtoLogGroup;->WM_ERROR:Lcom/android/server/wm/ProtoLogGroup;

    const v8, -0x1331e106

    const-string v9, "App freeze timeout expired."

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v8, v7, v9, v5}, Lcom/android/server/protolog/ProtoLogImpl;->w(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5253
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput v4, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 5254
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_a

    .line 5255
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppFreezeListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;

    invoke-interface {v4}, Lcom/android/server/wm/WindowManagerService$AppFreezeListener;->onAppFreezeTimeout()V

    .line 5254
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 5257
    .end local v0    # "i":I
    :cond_a
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5258
    goto/16 :goto_b

    .line 5257
    :catchall_b
    move-exception v0

    :try_start_1a
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5246
    :pswitch_11
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;)V

    .line 5247
    goto/16 :goto_b

    .line 5226
    :pswitch_12
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5229
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->isAnimationScheduled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5232
    const/16 v0, 0xf

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5233
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5237
    :cond_b
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v0, :cond_c

    .line 5238
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5240
    :cond_c
    :try_start_1d
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5241
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    .line 5242
    goto/16 :goto_b

    .line 5240
    :catchall_c
    move-exception v0

    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5185
    :pswitch_13
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5186
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5185
    const-string v4, "window_animation_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5187
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5189
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5187
    const-string v4, "transition_animation_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5190
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5191
    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v3

    .line 5190
    const-string v4, "animator_duration_scale"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 5192
    goto/16 :goto_b

    .line 5440
    :cond_d
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5441
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    iget v5, v2, Landroid/os/Message;->arg1:I

    int-to-float v5, v5

    iget v6, v2, Landroid/os/Message;->arg2:I

    int-to-float v6, v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService;->restorePointerIconLocked(Lcom/android/server/wm/DisplayContent;FF)V

    .line 5442
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5443
    goto/16 :goto_b

    .line 5442
    :catchall_d
    move-exception v0

    :try_start_20
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5446
    :cond_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5447
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_21
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5448
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->onSeamlessRotationTimeout()V

    .line 5449
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5450
    goto/16 :goto_b

    .line 5449
    :catchall_e
    move-exception v0

    :try_start_22
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5419
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 5420
    .local v3, "window":Lcom/android/server/wm/WindowState;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_23
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5432
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x81

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 5433
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hidePermanentlyLw()V

    .line 5434
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 5435
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5436
    monitor-exit v7
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5437
    goto/16 :goto_b

    .line 5436
    :catchall_f
    move-exception v0

    :try_start_24
    monitor-exit v7
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5197
    .end local v3    # "window":Lcom/android/server/wm/WindowState;
    :cond_10
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 5198
    .local v0, "mode":I
    if-eqz v0, :cond_13

    if-eq v0, v6, :cond_12

    if-eq v0, v4, :cond_11

    goto :goto_5

    .line 5214
    :cond_11
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5215
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v6, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5217
    invoke-static {v6}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)F

    move-result v6

    .line 5214
    const-string v7, "animator_duration_scale"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$902(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5218
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    goto :goto_5

    .line 5207
    :cond_12
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5208
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5210
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5207
    const-string v6, "transition_animation_scale"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$802(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5211
    goto :goto_5

    .line 5200
    :cond_13
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 5201
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 5203
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)F

    move-result v5

    .line 5200
    const-string v6, "window_animation_scale"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$702(Lcom/android/server/wm/WindowManagerService;F)F

    .line 5204
    nop

    .line 5222
    :goto_5
    goto/16 :goto_b

    .line 5453
    .end local v0    # "mode":I
    :cond_14
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    if-ne v4, v6, :cond_15

    goto :goto_6

    :cond_15
    move v6, v7

    :goto_6
    invoke-virtual {v0, v3, v6}, Landroid/app/ActivityManagerInternal;->setHasOverlayUi(IZ)V

    .line 5454
    goto/16 :goto_b

    .line 5409
    :cond_16
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5410
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    .local v0, "i":I
    :goto_7
    if-ltz v0, :cond_17

    .line 5411
    iget-object v4, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 5412
    .local v4, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->onWindowReplacementTimeout()V

    .line 5410
    .end local v4    # "activity":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 5414
    .end local v0    # "i":I
    :cond_17
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowReplacementTimeouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5415
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5416
    goto/16 :goto_b

    .line 5415
    :catchall_10
    move-exception v0

    :try_start_26
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5400
    :cond_18
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_27
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5401
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5402
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_19

    .line 5403
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->adjustForImeIfNeeded()V

    .line 5405
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5406
    goto/16 :goto_b

    .line 5405
    :catchall_11
    move-exception v0

    :try_start_28
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5262
    :cond_1a
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5263
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v0, :cond_1b

    .line 5264
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 5265
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "client-timeout"

    iput-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 5266
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 5268
    :cond_1b
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5269
    goto/16 :goto_b

    .line 5268
    :catchall_12
    move-exception v0

    :try_start_2a
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5273
    :cond_1c
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v0, :cond_2b

    .line 5274
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5275
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v7, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 5276
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5277
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_b

    .line 5276
    :catchall_13
    move-exception v0

    :try_start_2c
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5177
    :cond_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 5178
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5179
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->onWindowFreezeTimeout()V

    .line 5180
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5181
    goto/16 :goto_b

    .line 5180
    :catchall_14
    move-exception v0

    :try_start_2e
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5159
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 5162
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_2f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5163
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 5164
    .local v0, "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    .line 5165
    monitor-exit v9
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5167
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5168
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v3, :cond_20

    .line 5169
    sget-boolean v9, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v9, :cond_1f

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    sget-object v10, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v11, -0x2a93389b

    new-array v12, v6, [Ljava/lang/Object;

    aput-object v9, v12, v7

    invoke-static {v10, v11, v7, v5, v12}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5171
    .end local v9    # "protoLogParam0":Ljava/lang/String;
    :cond_1f
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5168
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 5173
    .end local v4    # "i":I
    :cond_20
    goto/16 :goto_b

    .line 5165
    .end local v0    # "losers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v3    # "N":I
    :catchall_15
    move-exception v0

    :try_start_30
    monitor-exit v9
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 5110
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    .line 5114
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v9, 0x0

    .line 5116
    .local v9, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v10

    :try_start_31
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5117
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_22

    .line 5118
    iget-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object v9, v0

    .line 5121
    :cond_22
    iget-object v0, v8, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5122
    .local v0, "lastFocus":Lcom/android/server/wm/WindowState;
    iget-object v11, v8, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 5123
    .local v11, "newFocus":Lcom/android/server/wm/WindowState;
    if-ne v0, v11, :cond_23

    .line 5125
    monitor-exit v10
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5127
    :cond_23
    :try_start_32
    iput-object v11, v8, Lcom/android/server/wm/DisplayContent;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 5128
    sget-boolean v12, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v12, :cond_24

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam0":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam1":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    int-to-long v14, v14

    .local v14, "protoLogParam2":J
    sget-object v5, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const/16 v4, 0x10

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v7

    aput-object v13, v3, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v3, v16

    const v6, -0x5ea488c3

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7, v3}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5131
    .end local v12    # "protoLogParam0":Ljava/lang/String;
    .end local v13    # "protoLogParam1":Ljava/lang/String;
    .end local v14    # "protoLogParam2":J
    :cond_24
    if-eqz v11, :cond_26

    if-eqz v0, :cond_26

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-nez v3, :cond_26

    .line 5132
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_25

    sget-object v3, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v4, 0x16f4196e

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5133
    :cond_25
    iget-object v3, v8, Lcom/android/server/wm/DisplayContent;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5134
    const/4 v0, 0x0

    .line 5136
    :cond_26
    monitor-exit v10
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5140
    if-eqz v9, :cond_27

    .line 5141
    nop

    .line 5142
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 5141
    invoke-virtual {v9, v3}, Lcom/android/server/wm/AccessibilityController;->onWindowFocusChangedNotLocked(I)V

    .line 5145
    :cond_27
    if-eqz v11, :cond_29

    .line 5146
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_28

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x5c5cbc6

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v7, v10

    const/4 v12, 0x0

    invoke-static {v4, v5, v10, v12, v7}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_28
    const/4 v6, 0x1

    .line 5147
    :goto_9
    invoke-virtual {v11, v6}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5148
    iget-object v3, v1, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 5151
    :cond_29
    if-eqz v0, :cond_2b

    .line 5152
    sget-boolean v3, Lcom/android/server/protolog/ProtoLog$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:Z

    if-eqz v3, :cond_2a

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/server/wm/ProtoLogGroup;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/server/wm/ProtoLogGroup;

    const v5, -0x2df8d65d

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v10, 0x0

    invoke-static {v4, v5, v7, v10, v6}, Lcom/android/server/protolog/ProtoLogImpl;->i(Lcom/android/server/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_2a
    const/4 v7, 0x0

    .line 5153
    :goto_a
    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowState;->reportFocusChangedSerialized(Z)V

    .line 5493
    .end local v0    # "lastFocus":Lcom/android/server/wm/WindowState;
    .end local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v11    # "newFocus":Lcom/android/server/wm/WindowState;
    :cond_2b
    :goto_b
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_2c

    .line 5494
    const-string v0, "WindowManager"

    const-string v3, "handleMessage: exit"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5496
    :cond_2c
    return-void

    .line 5136
    .restart local v8    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .restart local v9    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    :catchall_16
    move-exception v0

    :try_start_33
    monitor-exit v10
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x24
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendNewMessageDelayed(ILjava/lang/Object;J)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .line 5500
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 5501
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5502
    return-void
.end method
