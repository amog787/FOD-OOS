.class final Lcom/android/server/VibratorService$ExternalVibratorService;
.super Landroid/os/IExternalVibratorService$Stub;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ExternalVibratorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;
    }
.end annotation


# instance fields
.field mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 2148
    iput-object p1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/IExternalVibratorService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalVibrationStart(Landroid/os/ExternalVibration;)I
    .locals 5
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2153
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Z

    move-result v0

    const/16 v1, -0x64

    if-nez v0, :cond_0

    .line 2154
    return v1

    .line 2156
    :cond_0
    nop

    .line 2157
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v0

    const/4 v2, -0x1

    .line 2156
    const-string v3, "android.permission.VIBRATE"

    const/4 v4, 0x1

    invoke-static {v3, v0, v2, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_1

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tried to play externally controlled vibration without VIBRATE permission, ignoring."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VibratorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return v1

    .line 2166
    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2168
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2172
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 2173
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, v4}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;Z)V

    .line 2183
    :cond_2
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1, p1}, Lcom/android/server/VibratorService;->access$2002(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 2184
    new-instance v1, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;-><init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 2185
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 2186
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)I

    move-result v2

    if-le v1, v2, :cond_3

    .line 2187
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 2189
    :cond_3
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 2190
    invoke-static {}, Lcom/android/server/VibratorService;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2191
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playing external vibration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_4
    invoke-virtual {p1}, Landroid/os/ExternalVibration;->getVibrationAttributes()Landroid/os/VibrationAttributes;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v1

    .line 2197
    .local v1, "usage":I
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2198
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultRingVibrationIntensity()I

    move-result v2

    .line 2199
    .local v2, "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2600(Lcom/android/server/VibratorService;)I

    move-result v3

    .local v3, "currentIntensity":I
    goto :goto_0

    .line 2200
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_5
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2201
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    .line 2202
    .restart local v2    # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2700(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3    # "currentIntensity":I
    goto :goto_0

    .line 2203
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_6
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2204
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2500(Lcom/android/server/VibratorService;)Landroid/os/Vibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    .line 2205
    .restart local v2    # "defaultIntensity":I
    iget-object v3, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$2800(Lcom/android/server/VibratorService;)I

    move-result v3

    .restart local v3    # "currentIntensity":I
    goto :goto_0

    .line 2206
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_7
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2207
    const/4 v2, 0x3

    .line 2208
    .restart local v2    # "defaultIntensity":I
    const/4 v3, 0x3

    .restart local v3    # "currentIntensity":I
    goto :goto_0

    .line 2210
    .end local v2    # "defaultIntensity":I
    .end local v3    # "currentIntensity":I
    :cond_8
    const/4 v2, 0x0

    .line 2211
    .restart local v2    # "defaultIntensity":I
    const/4 v3, 0x0

    .line 2213
    .restart local v3    # "currentIntensity":I
    :goto_0
    sub-int/2addr v3, v2

    .line 2214
    .end local v1    # "usage":I
    .end local v2    # "defaultIntensity":I
    .local v3, "scaleLevel":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    const/4 v0, -0x2

    if-lt v3, v0, :cond_9

    const/4 v0, 0x2

    if-gt v3, v0, :cond_9

    .line 2216
    return v3

    .line 2220
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in scaling calculations, ended up with invalid scale level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for vibration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibratorService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    const/4 v0, 0x0

    return v0

    .line 2214
    .end local v3    # "scaleLevel":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onExternalVibrationStop(Landroid/os/ExternalVibration;)V
    .locals 4
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 2228
    iget-object v0, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/ExternalVibration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2000(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    invoke-virtual {v1, v2}, Landroid/os/ExternalVibration;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 2231
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->mCurrentExternalDeathRecipient:Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;

    .line 2232
    iget-object v2, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->access$2002(Lcom/android/server/VibratorService;Landroid/os/ExternalVibration;)Landroid/os/ExternalVibration;

    .line 2233
    iget-object v1, p0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$2100(Lcom/android/server/VibratorService;Z)V

    .line 2234
    invoke-static {}, Lcom/android/server/VibratorService;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2235
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping external vibration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_0
    monitor-exit v0

    .line 2239
    return-void

    .line 2238
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
