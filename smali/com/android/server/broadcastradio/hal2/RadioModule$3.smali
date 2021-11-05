.class Lcom/android/server/broadcastradio/hal2/RadioModule$3;
.super Landroid/hardware/radio/ICloseHandle$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field final synthetic val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 388
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-direct {p0}, Landroid/hardware/radio/ICloseHandle$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$3;->val$hwCloseHandle:Lcom/android/server/broadcastradio/hal2/Mutable;

    iget-object v0, v0, Lcom/android/server/broadcastradio/hal2/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;

    invoke-interface {v0}, Landroid/hardware/broadcastradio/V2_0/ICloseHandle;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "BcRadio2Srv.module"

    const-string v2, "Failed closing announcement listener"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 395
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
