.class public Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SynchronizedStrongAuthTracker"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 307
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 308
    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    .line 319
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    monitor-exit p0

    return v0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .locals 1
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    .line 312
    monitor-enter p0

    .line 313
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V

    .line 314
    monitor-exit p0

    .line 315
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method register(Lcom/android/server/locksettings/LockSettingsStrongAuth;)V
    .locals 1
    .param p1, "strongAuth"    # Lcom/android/server/locksettings/LockSettingsStrongAuth;

    .line 325
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;->getStub()Landroid/app/trust/IStrongAuthTracker$Stub;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 326
    return-void
.end method
