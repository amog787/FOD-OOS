.class Lcom/android/server/wm/TaskChangeNotificationController;
.super Ljava/lang/Object;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;,
        Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    }
.end annotation


# static fields
.field private static final LOG_STACK_STATE_MSG:I = 0x1

.field private static final NOTIFY_ACTIVITY_DISMISSING_DOCKED_STACK_MSG:I = 0x7

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_FAILED_MSG:I = 0x12

.field private static final NOTIFY_ACTIVITY_LAUNCH_ON_SECONDARY_DISPLAY_REROUTED_MSG:I = 0x13

.field private static final NOTIFY_ACTIVITY_PINNED_LISTENERS_MSG:I = 0x3

.field private static final NOTIFY_ACTIVITY_REQUESTED_ORIENTATION_CHANGED_LISTENERS:I = 0xc

.field private static final NOTIFY_ACTIVITY_UNPINNED_LISTENERS_MSG:I = 0x11

.field private static final NOTIFY_BACK_PRESSED_ON_TASK_ROOT:I = 0x15

.field private static final NOTIFY_FORCED_RESIZABLE_MSG:I = 0x6

.field private static final NOTIFY_PINNED_ACTIVITY_RESTART_ATTEMPT_LISTENERS_MSG:I = 0x4

.field private static final NOTIFY_PINNED_STACK_ANIMATION_ENDED_LISTENERS_MSG:I = 0x5

.field private static final NOTIFY_PINNED_STACK_ANIMATION_STARTED_LISTENERS_MSG:I = 0x10

.field private static final NOTIFY_SIZE_COMPAT_MODE_ACTIVITY_CHANGED_MSG:I = 0x14

.field private static final NOTIFY_TASK_ADDED_LISTENERS_MSG:I = 0x8

.field private static final NOTIFY_TASK_DESCRIPTION_CHANGED_LISTENERS_MSG:I = 0xb

.field private static final NOTIFY_TASK_DISPLAY_CHANGED_LISTENERS_MSG:I = 0x16

.field private static final NOTIFY_TASK_MOVED_TO_FRONT_LISTENERS_MSG:I = 0xa

.field private static final NOTIFY_TASK_PROFILE_LOCKED_LISTENERS_MSG:I = 0xe

.field private static final NOTIFY_TASK_REMOVAL_STARTED_LISTENERS:I = 0xd

.field private static final NOTIFY_TASK_REMOVED_LISTENERS_MSG:I = 0x9

.field private static final NOTIFY_TASK_SNAPSHOT_CHANGED_LISTENERS_MSG:I = 0xf

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_DELAY:I = 0x64

.field private static final NOTIFY_TASK_STACK_CHANGE_LISTENERS_MSG:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLocalTaskStackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

.field private final mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/ITaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceLock:Ljava/lang/Object;

.field private final mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Handler;)V
    .locals 2
    .param p1, "serviceLock"    # Ljava/lang/Object;
    .param p2, "stackSupervisor"    # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    .line 77
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SAbrujQOZNUflKs1FAg2mBnjx3A;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 81
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$1ziXgnyLi0gQjqMGJAbSzs0-dmE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 85
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$kss8MGli3T9b_Y-QDzR2cB843y8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 89
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ZLPZtiEvD_F4WUgH7BD4KPpdAWM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 93
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Ge3jFevRwpndz6qRSLDXODq2VjE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 97
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$SByuGj5tpcCpjTH9lf5zHHv2gNM;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 101
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$MS67FdGix7tWO0Od9imcaKVXL7I;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 105
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$NLoKy9SbVr1EJpEjznsKi7yAlpg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 109
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$ncM_yje7-m7HuiJvorBIH_C8Ou4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 114
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$qONfw3ssOxjb_iMuO2oMzCbXfrg;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 118
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$9ngbiJ2r3x2ASHwN59tUFO2-2BQ;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 122
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$M2NSB3SSVJR2Tu4vihNfsIL31s4;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 126
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$k0FXXC-HcWJhmtm6-Kruo6nGeXI;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 130
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$byMDuIFUN4cQ1lT9jVjMwLhaLDw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 134
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$0m_-qN9QkcgkoWun2Biw8le4l1Y;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 138
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$yaW9HlZsz3L55CTQ4b7y33IGo94;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 142
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$wuBjs4dj7gB_MI4dIdt2gV2Osus;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 146
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$Dvvt1gNNfFRVEKlSCdL_9VnilUE;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 150
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$UexNbaqPy0mc3VxTw2coCctHho8;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 154
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$sS6OHbZtuWHjzmkm8bleSWZWFqA;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 158
    sget-object v0, Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskChangeNotificationController$cFUeUwnRjuOQKcg2c4PnDS0ImTw;

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    .line 250
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    .line 251
    iput-object p2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 252
    new-instance v0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;-><init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 253
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDisplayChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;
    .param p1, "x1"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "x2"    # Landroid/os/Message;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/TaskChangeNotificationController;

    .line 35
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    return-object v0
.end method

.method private forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 299
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    goto :goto_1

    .line 300
    :catch_0
    move-exception v2

    .line 297
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private forAllRemoteListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;
    .param p2, "message"    # Landroid/os/Message;

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 286
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/ITaskStackListener;

    invoke-interface {p1, v2, p2}, Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;->accept(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    goto :goto_1

    .line 287
    :catch_0
    move-exception v2

    .line 283
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 291
    .end local v1    # "i":I
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 292
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic lambda$new$0(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onTaskStackChanged()V

    .line 79
    return-void
.end method

.method static synthetic lambda$new$1(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskCreated(ILandroid/content/ComponentName;)V

    .line 83
    return-void
.end method

.method static synthetic lambda$new$10(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onPinnedActivityRestartAttempt(Z)V

    .line 120
    return-void
.end method

.method static synthetic lambda$new$11(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 123
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationStarted()V

    .line 124
    return-void
.end method

.method static synthetic lambda$new$12(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onPinnedStackAnimationEnded()V

    .line 128
    return-void
.end method

.method static synthetic lambda$new$13(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 3
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2}, Landroid/app/ITaskStackListener;->onActivityForcedResizable(Ljava/lang/String;II)V

    .line 132
    return-void
.end method

.method static synthetic lambda$new$14(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityDismissingDockedStack()V

    .line 136
    return-void
.end method

.method static synthetic lambda$new$15(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 140
    return-void
.end method

.method static synthetic lambda$new$16(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    .line 144
    return-void
.end method

.method static synthetic lambda$new$17(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskProfileLocked(II)V

    .line 148
    return-void
.end method

.method static synthetic lambda$new$18(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V

    .line 152
    return-void
.end method

.method static synthetic lambda$new$19(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    .line 156
    return-void
.end method

.method static synthetic lambda$new$2(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemoved(I)V

    .line 87
    return-void
.end method

.method static synthetic lambda$new$20(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onTaskDisplayChanged(II)V

    .line 160
    return-void
.end method

.method static synthetic lambda$new$3(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 91
    return-void
.end method

.method static synthetic lambda$new$4(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 95
    return-void
.end method

.method static synthetic lambda$new$5(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 99
    return-void
.end method

.method static synthetic lambda$new$6(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 2
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1}, Landroid/app/ITaskStackListener;->onActivityRequestedOrientationChanged(II)V

    .line 103
    return-void
.end method

.method static synthetic lambda$new$7(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 1
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {p0, v0}, Landroid/app/ITaskStackListener;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 107
    return-void
.end method

.method static synthetic lambda$new$8(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 4
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->sendingUid:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/app/ITaskStackListener;->onActivityPinned(Ljava/lang/String;III)V

    .line 112
    return-void
.end method

.method static synthetic lambda$new$9(Landroid/app/ITaskStackListener;Landroid/os/Message;)V
    .locals 0
    .param p0, "l"    # Landroid/app/ITaskStackListener;
    .param p1, "m"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Landroid/app/ITaskStackListener;->onActivityUnpinned()V

    .line 116
    return-void
.end method


# virtual methods
.method notifyActivityDismissingDockedStack()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 370
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityDismissingDockedStack:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 371
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 372
    return-void
.end method

.method notifyActivityForcedResizable(IILjava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "reason"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityForcedResizable:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 379
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 380
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V
    .locals 3
    .param p1, "ti"    # Landroid/app/TaskInfo;
    .param p2, "requestedDisplayId"    # I

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayFailed:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 388
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 389
    return-void
.end method

.method notifyActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/TaskInfo;I)V
    .locals 3
    .param p1, "ti"    # Landroid/app/TaskInfo;
    .param p2, "requestedDisplayId"    # I

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 393
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityLaunchOnSecondaryDisplayRerouted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 397
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 398
    return-void
.end method

.method notifyActivityPinned(Lcom/android/server/wm/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    iget v2, v2, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getStackId()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 320
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v1, v0, Landroid/os/Message;->sendingUid:I

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityPinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 324
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 325
    return-void
.end method

.method notifyActivityRequestedOrientationChanged(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "orientation"    # I

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 431
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityRequestedOrientationChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 432
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    return-void
.end method

.method notifyActivityUnpinned()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyActivityUnpinned:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 332
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-void
.end method

.method notifyBackPressedOnTaskRoot(Landroid/app/TaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyBackPressedOnTaskRoot:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 486
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 487
    return-void
.end method

.method notifyPinnedActivityRestartAttempt(Z)V
    .locals 3
    .param p1, "clearedTask"    # Z

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 344
    const/4 v2, 0x0

    .line 343
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 345
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedActivityRestartAttempt:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 346
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 347
    return-void
.end method

.method notifyPinnedStackAnimationEnded()V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 362
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationEnded:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 364
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 365
    return-void
.end method

.method notifyPinnedStackAnimationStarted()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    .line 353
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyPinnedStackAnimationStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 355
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 356
    return-void
.end method

.method notifySizeCompatModeActivityChanged(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "activityToken"    # Landroid/os/IBinder;

    .line 472
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mOnSizeCompatModeActivityChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 475
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 476
    return-void
.end method

.method notifyTaskCreated(ILandroid/content/ComponentName;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskCreated:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 404
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 405
    return-void
.end method

.method notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/TaskInfo;

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskDescriptionChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 424
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 426
    return-void
.end method

.method notifyTaskDisplayChanged(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "newDisplayId"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 496
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method notifyTaskMovedToFront(Landroid/app/TaskInfo;)V
    .locals 2
    .param p1, "ti"    # Landroid/app/TaskInfo;

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskMovedToFront:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 417
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method notifyTaskProfileLocked(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 453
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskProfileLocked:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 454
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 455
    return-void
.end method

.method notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 441
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 442
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemovalStarted:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 443
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 444
    return-void
.end method

.method notifyTaskRemoved(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 410
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskRemoved:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 411
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 412
    return-void
.end method

.method notifyTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "snapshot"    # Landroid/app/ActivityManager$TaskSnapshot;

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 463
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskSnapshotChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 464
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 465
    return-void
.end method

.method notifyTaskStackChanged()V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 311
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 312
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mNotifyTaskStackChanged:Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->forAllLocalListeners(Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 315
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    if-eqz p1, :cond_1

    .line 258
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 266
    :cond_1
    :goto_0
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/app/ITaskStackListener;

    .line 270
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    if-eqz p1, :cond_1

    .line 272
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mLocalTaskStackListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController;->mRemoteTaskStackListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 278
    :cond_1
    :goto_0
    monitor-exit v0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
