.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "JobRestriction.java"


# instance fields
.field private final mReason:I

.field final mService:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "reason"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 42
    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    .line 43
    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
.end method

.method public abstract dumpConstants(Lcom/android/internal/util/IndentingPrintWriter;)V
.end method

.method public final getReason()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    return v0
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
.end method

.method public onSystemServicesReady()V
    .locals 0

    .line 50
    return-void
.end method
