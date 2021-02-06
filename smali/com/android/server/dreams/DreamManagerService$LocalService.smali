.class final Lcom/android/server/dreams/DreamManagerService$LocalService;
.super Landroid/service/dreams/DreamManagerInternal;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/DreamManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/dreams/DreamManagerService;
    .param p2, "x1"    # Lcom/android/server/dreams/DreamManagerService$1;

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public getActiveDreamComponent(Z)Landroid/content/ComponentName;
    .locals 1
    .param p1, "doze"    # Z

    .line 773
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2400(Lcom/android/server/dreams/DreamManagerService;Z)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public isDreaming()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$1400(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result v0

    return v0
.end method

.method public onSingleTap()V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/dreams/DreamController;->onSingleTap()V

    .line 781
    return-void
.end method

.method public startDream(Z)V
    .locals 1
    .param p1, "doze"    # Z

    .line 758
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0, p1}, Lcom/android/server/dreams/DreamManagerService;->access$2200(Lcom/android/server/dreams/DreamManagerService;Z)V

    .line 759
    return-void
.end method

.method public stopDream(Z)V
    .locals 2
    .param p1, "immediate"    # Z

    .line 763
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$LocalService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v1, "requested stopDream"

    invoke-static {v0, p1, v1}, Lcom/android/server/dreams/DreamManagerService;->access$2300(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V

    .line 764
    return-void
.end method
