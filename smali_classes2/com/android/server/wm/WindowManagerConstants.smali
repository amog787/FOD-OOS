.class final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "WindowManagerConstants.java"


# static fields
.field static final KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS:Ljava/lang/String; = "system_gesture_exclusion_log_debounce_millis"

.field private static final MIN_GESTURE_EXCLUSION_LIMIT_DP:I = 0xc8


# instance fields
.field private final mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field mSystemGestureExcludedByPreQStickyImmersive:Z

.field mSystemGestureExclusionLimitDp:I

.field mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field private final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Lcom/android/server/wm/utils/DeviceConfigInterface;)V
    .locals 1
    .param p1, "globalLock"    # Lcom/android/server/wm/WindowManagerGlobalLock;
    .param p2, "updateSystemGestureExclusionCallback"    # Ljava/lang/Runnable;
    .param p3, "deviceConfig"    # Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 77
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    .line 78
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 79
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$vqhvZbTPHnj84vQKH9wjAhgVP44;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$vqhvZbTPHnj84vQKH9wjAhgVP44;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 80
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$H0Vnr9H2xLD72_22unzb68d1fSM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$H0Vnr9H2xLD72_22unzb68d1fSM;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 81
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/utils/DeviceConfigInterface;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "deviceConfig"    # Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 68
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$YOsWod8qOtbBnduZqPrYHSwyJ5E;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerConstants$YOsWod8qOtbBnduZqPrYHSwyJ5E;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/WindowManagerConstants;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Lcom/android/server/wm/utils/DeviceConfigInterface;)V

    .line 70
    return-void
.end method

.method public static synthetic lambda$H0Vnr9H2xLD72_22unzb68d1fSM(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p0, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$JQG7CszycLV40zONwvdlvplb1TI;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$vqhvZbTPHnj84vQKH9wjAhgVP44(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method private onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 102
    const/4 v1, 0x0

    .line 103
    .local v1, "updateSystemGestureExclusionLimit":Z
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 104
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 107
    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4bcc3a39

    const/4 v7, 0x1

    if-eq v5, v6, :cond_3

    const v6, 0x12e32da7

    if-eq v5, v6, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v5, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const-string v5, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v7

    :goto_1
    if-eqz v4, :cond_5

    if-eq v4, v7, :cond_4

    goto :goto_2

    .line 113
    :cond_4
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    .line 114
    const/4 v1, 0x1

    .line 115
    goto :goto_2

    .line 109
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 110
    const/4 v1, 0x1

    .line 111
    nop

    .line 119
    .end local v3    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 120
    :cond_6
    if-eqz v1, :cond_7

    .line 121
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 123
    .end local v1    # "updateSystemGestureExclusionLimit":Z
    :cond_7
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 128
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, "name":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 132
    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x7801476

    if-eq v4, v5, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    const-string v4, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    .line 134
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 135
    nop

    .line 139
    .end local v2    # "name":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 140
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private updateSystemGestureExcludedByPreQStickyImmersive()V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    const-string v1, "android"

    const-string v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    .line 159
    return-void
.end method

.method private updateSystemGestureExclusionLimitDp()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 151
    const-string v1, "android"

    const-string v2, "system_gesture_exclusion_limit_dp"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 150
    const/16 v1, 0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    .line 153
    return-void
.end method

.method private updateSystemGestureExclusionLogDebounceMillis()V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 145
    const-string v1, "window_manager"

    const-string v2, "system_gesture_exclusion_log_debounce_millis"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/wm/utils/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    .line 147
    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 98
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 162
    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 166
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "system_gesture_exclusion_limit_dp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 171
    return-void
.end method

.method start(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "android"

    invoke-interface {v0, v2, p1, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "window_manager"

    invoke-interface {v0, v2, p1, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 89
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    .line 90
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    .line 91
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    .line 92
    return-void
.end method
