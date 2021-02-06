.class Lcom/android/server/am/ActivityManagerService$28;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$finishCallback:Landroid/os/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/RemoteCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 20517
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$28;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$28;->val$finishCallback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Bundle;

    .line 20520
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$28;->val$finishCallback:Landroid/os/RemoteCallback;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 20521
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Process;->enableFreezer(Z)V

    .line 20522
    return-void
.end method
