.class Lcom/android/server/audio/OpAudioMonitor$2;
.super Ljava/lang/Object;
.source "OpAudioMonitor.java"

# interfaces
.implements Lvendor/oneplus/hardware/drmkey/V1_0/IOneplusDrmKey$sendCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/OpAudioMonitor;->otaInstallWidevineKeybox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/OpAudioMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/audio/OpAudioMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/audio/OpAudioMonitor;

    .line 387
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$2;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 390
    if-nez p1, :cond_1

    .line 391
    iget-object v0, p0, Lcom/android/server/audio/OpAudioMonitor$2;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v0, p2}, Lcom/android/server/audio/OpAudioMonitor;->access$200(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 392
    .local v0, "keyboxJson":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/server/audio/OpAudioMonitor$2;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-static {v1, v0}, Lcom/android/server/audio/OpAudioMonitor;->access$302(Lcom/android/server/audio/OpAudioMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .end local v0    # "keyboxJson":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 396
    :cond_1
    const-string v0, "OpAudioMonitor"

    const-string v1, "Get license Fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void
.end method
