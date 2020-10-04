.class final Lcom/android/server/vr/VrManagerService$LocalService;
.super Lcom/android/server/vr/VrManagerInternal;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/VrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vr/VrManagerService;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-direct {p0}, Lcom/android/server/vr/VrManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vr/VrManagerService;Lcom/android/server/vr/VrManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vr/VrManagerService;
    .param p2, "x1"    # Lcom/android/server/vr/VrManagerService$1;

    .line 705
    invoke-direct {p0, p1}, Lcom/android/server/vr/VrManagerService$LocalService;-><init>(Lcom/android/server/vr/VrManagerService;)V

    return-void
.end method


# virtual methods
.method public addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V
    .locals 1
    .param p1, "listener"    # Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 745
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$2000(Lcom/android/server/vr/VrManagerService;Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 746
    return-void
.end method

.method public getVr2dDisplayId()I
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0}, Lcom/android/server/vr/VrManagerService;->access$2400(Lcom/android/server/vr/VrManagerService;)I

    move-result v0

    return v0
.end method

.method public hasVrPackage(Landroid/content/ComponentName;I)I
    .locals 1
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 724
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->access$3600(Lcom/android/server/vr/VrManagerService;Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public isCurrentVrListener(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 719
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/vr/VrManagerService;->access$3500(Lcom/android/server/vr/VrManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public onScreenStateChanged(Z)V
    .locals 1
    .param p1, "isScreenOn"    # Z

    .line 714
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$3400(Lcom/android/server/vr/VrManagerService;Z)V

    .line 715
    return-void
.end method

.method public setPersistentVrModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 729
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-static {v0, p1}, Lcom/android/server/vr/VrManagerService;->access$600(Lcom/android/server/vr/VrManagerService;Z)V

    .line 730
    return-void
.end method

.method public setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V
    .locals 1
    .param p1, "compatDisplayProp"    # Landroid/app/Vr2dDisplayProperties;

    .line 735
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerService;->setVr2dDisplayProperties(Landroid/app/Vr2dDisplayProperties;)V

    .line 736
    return-void
.end method

.method public setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "packageName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "processId"    # I
    .param p5, "callingPackage"    # Landroid/content/ComponentName;

    .line 709
    iget-object v0, p0, Lcom/android/server/vr/VrManagerService$LocalService;->this$0:Lcom/android/server/vr/VrManagerService;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/vr/VrManagerService;->access$3300(Lcom/android/server/vr/VrManagerService;ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 710
    return-void
.end method
