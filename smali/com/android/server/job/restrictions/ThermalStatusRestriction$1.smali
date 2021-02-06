.class Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;
.super Ljava/lang/Object;
.source "ThermalStatusRestriction.java"

# interfaces
.implements Landroid/os/PowerManager$OnThermalStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/restrictions/ThermalStatusRestriction;->onSystemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;


# direct methods
.method constructor <init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 44
    iput-object p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThermalStatusChanged(I)V
    .locals 2
    .param p1, "status"    # I

    .line 49
    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, "shouldBeActive":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {v1}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->access$000(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 51
    return-void

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    invoke-static {v1, v0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->access$002(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)Z

    .line 54
    iget-object v1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;->this$0:Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    iget-object v1, v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged()V

    .line 55
    return-void
.end method
