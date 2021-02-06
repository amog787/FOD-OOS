.class Lcom/android/server/audio/OpAudioMonitor$3;
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

    .line 402
    iput-object p1, p0, Lcom/android/server/audio/OpAudioMonitor$3;->this$0:Lcom/android/server/audio/OpAudioMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILjava/lang/String;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 405
    if-eqz p1, :cond_0

    .line 406
    const-string v0, "OpAudioMonitor"

    const-string v1, "Install keybox Fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return-void
.end method
