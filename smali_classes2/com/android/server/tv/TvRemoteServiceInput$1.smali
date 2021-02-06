.class Lcom/android/server/tv/TvRemoteServiceInput$1;
.super Ljava/lang/Object;
.source "TvRemoteServiceInput.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvRemoteServiceInput;->openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tv/TvRemoteServiceInput;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvRemoteServiceInput;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteServiceInput;

    .line 64
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iput-object p2, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->this$0:Lcom/android/server/tv/TvRemoteServiceInput;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteServiceInput$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteServiceInput;->closeInputBridge(Landroid/os/IBinder;)V

    .line 68
    return-void
.end method
