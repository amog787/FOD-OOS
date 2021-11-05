.class public Lcom/android/server/job/restrictions/ThermalStatusRestriction;
.super Lcom/android/server/job/restrictions/JobRestriction;
.source "ThermalStatusRestriction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThermalStatusRestriction"


# instance fields
.field private volatile mIsThermalRestricted:Z

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 37
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/job/restrictions/JobRestriction;-><init>(Lcom/android/server/job/JobSchedulerService;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/job/restrictions/ThermalStatusRestriction;

    .line 29
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/job/restrictions/ThermalStatusRestriction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/job/restrictions/ThermalStatusRestriction;
    .param p1, "x1"    # Z

    .line 29
    iput-boolean p1, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    return p1
.end method


# virtual methods
.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .locals 3
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 72
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    const-wide v1, 0x10800000013L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 73
    return-void
.end method

.method public dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 66
    const-string v0, "In thermal throttling?: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 68
    return-void
.end method

.method public isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mIsThermalRestricted:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSystemServicesReady()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/restrictions/ThermalStatusRestriction;->mPowerManager:Landroid/os/PowerManager;

    .line 44
    new-instance v1, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;

    invoke-direct {v1, p0}, Lcom/android/server/job/restrictions/ThermalStatusRestriction$1;-><init>(Lcom/android/server/job/restrictions/ThermalStatusRestriction;)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 57
    return-void
.end method
