.class Lcom/android/server/locksettings/LockSettingsService$6;
.super Landroid/hardware/face/FaceManager$RemovalCallback;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/locksettings/LockSettingsService;->faceManagerRemovalCallback(Ljava/util/concurrent/CountDownLatch;)Landroid/hardware/face/FaceManager$RemovalCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/locksettings/LockSettingsService;

    .line 3133
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$6;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsService$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/hardware/face/FaceManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Landroid/hardware/face/Face;ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "errMsgId"    # I
    .param p3, "err"    # Ljava/lang/CharSequence;

    .line 3136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 3137
    invoke-virtual {p1}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    .line 3136
    const-string v1, "Can\'t remove face %d. Reason: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3139
    return-void
.end method

.method public onRemovalSucceeded(Landroid/hardware/face/Face;I)V
    .locals 1
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 3143
    if-nez p2, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$6;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 3146
    :cond_0
    return-void
.end method
