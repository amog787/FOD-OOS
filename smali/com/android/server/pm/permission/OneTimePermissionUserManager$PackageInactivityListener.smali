.class Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
.super Ljava/lang/Object;
.source "OneTimePermissionUserManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInactivityListener"
.end annotation


# static fields
.field private static final TIMER_INACTIVE:J = -0x1L


# instance fields
.field private final mGoneListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field private final mImportanceToKeepSessionAlive:I

.field private final mImportanceToResetTimer:I

.field private final mInnerLock:Ljava/lang/Object;

.field private mIsAlarmSet:Z

.field private mIsFinished:Z

.field private final mPackageName:Ljava/lang/String;

.field private final mSessionKillableListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field private final mStartTimerListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field private final mTimeout:J

.field private mTimerStart:J

.field private final mToken:Ljava/lang/Object;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JII)V
    .locals 3
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "timeout"    # J
    .param p6, "importanceToResetTimer"    # I
    .param p7, "importanceToKeepSessionAlive"    # I

    .line 205
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 201
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start tracking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " timeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " importanceToResetTimer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " importanceToKeepSessionAlive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 213
    iput-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 214
    iput-wide p4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 215
    iput p6, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mImportanceToResetTimer:I

    .line 216
    iput p7, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mImportanceToKeepSessionAlive:I

    .line 218
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$SVoloDDAPWRycmaRhugBlXuSVeI;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$SVoloDDAPWRycmaRhugBlXuSVeI;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mStartTimerListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 220
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$6-ufctMfTfrbd3URDMlB0Ywd8Ik;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mSessionKillableListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 222
    new-instance v0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$lKEtuzRRYU8MegOihXQiXrZ0ZaM;

    invoke-direct {v0, p0}, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$lKEtuzRRYU8MegOihXQiXrZ0ZaM;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mGoneListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 225
    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mStartTimerListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v1, p6}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 227
    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mSessionKillableListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v1, p7}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 229
    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mGoneListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 231
    iget v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onImportanceChanged(II)V

    .line 232
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JIILcom/android/server/pm/permission/OneTimePermissionUserManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # I
    .param p7, "x5"    # I
    .param p8, "x6"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager$1;

    .line 182
    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    .line 182
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 286
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 287
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mStartTimerListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 288
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mSessionKillableListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mGoneListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelAlarmLocked()V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$700(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 328
    :cond_0
    return-void
.end method

.method private onImportanceChanged(II)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 235
    iget v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    if-eq p1, v0, :cond_0

    .line 236
    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Importance changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). importance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$500(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 245
    const/16 v1, 0x190

    if-le p2, v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$500(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$QvMmrihy_HaJZiB1gxMOFQ1HgzM;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$QvMmrihy_HaJZiB1gxMOFQ1HgzM;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iget-object v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 258
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$600()J

    move-result-wide v4

    .line 247
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 259
    monitor-exit v0

    return-void

    .line 261
    :cond_1
    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mImportanceToResetTimer:I

    const-wide/16 v2, -0x1

    if-le p2, v1, :cond_2

    .line 262
    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_3

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    goto :goto_0

    .line 270
    :cond_2
    iput-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 272
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mImportanceToKeepSessionAlive:I

    if-le p2, v1, :cond_4

    .line 273
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->setAlarmLocked()V

    goto :goto_1

    .line 275
    :cond_4
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 277
    :goto_1
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onPackageInactiveLocked()V
    .locals 3

    .line 335
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 343
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$500(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mStartTimerListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mSessionKillableListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mGoneListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$800(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$000(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAlarmLocked()V
    .locals 11

    .line 298
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_0

    .line 299
    return-void

    .line 305
    :cond_0
    iget-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    iget-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    add-long/2addr v0, v2

    .line 306
    .local v0, "revokeTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-lez v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$700(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$300()Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    .line 308
    invoke-static {v2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$500(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v10

    .line 307
    move-wide v6, v0

    move-object v9, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 309
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    goto :goto_0

    .line 311
    :cond_1
    iput-boolean v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onAlarm()V

    .line 314
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$OneTimePermissionUserManager$PackageInactivityListener(II)V
    .locals 0
    .param p1, "changingUid"    # I
    .param p2, "importance"    # I

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onImportanceChanged(II)V

    return-void
.end method

.method public synthetic lambda$new$1$OneTimePermissionUserManager$PackageInactivityListener(II)V
    .locals 0
    .param p1, "changingUid"    # I
    .param p2, "importance"    # I

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onImportanceChanged(II)V

    return-void
.end method

.method public synthetic lambda$new$2$OneTimePermissionUserManager$PackageInactivityListener(II)V
    .locals 0
    .param p1, "changingUid"    # I
    .param p2, "importance"    # I

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onImportanceChanged(II)V

    return-void
.end method

.method public synthetic lambda$onImportanceChanged$3$OneTimePermissionUserManager$PackageInactivityListener()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$400(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v0

    .line 249
    .local v0, "imp":I
    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    goto :goto_0

    .line 256
    :cond_0
    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onImportanceChanged(II)V

    .line 258
    :goto_0
    return-void
.end method

.method public synthetic lambda$onPackageInactiveLocked$4$OneTimePermissionUserManager$PackageInactivityListener()V
    .locals 3

    .line 346
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One time session expired for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->access$900(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/permission/PermissionControllerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/permission/PermissionControllerManager;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-nez v1, :cond_0

    .line 367
    monitor-exit v0

    return-void

    .line 369
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 370
    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 371
    monitor-exit v0

    .line 372
    return-void

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
