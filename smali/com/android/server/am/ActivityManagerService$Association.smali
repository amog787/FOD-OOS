.class final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Association"
.end annotation


# instance fields
.field mCount:I

.field mLastState:I

.field mLastStateUptime:J

.field mNesting:I

.field final mSourceProcess:Ljava/lang/String;

.field final mSourceUid:I

.field mStartTime:J

.field mStateTimes:[J

.field final mTargetComponent:Landroid/content/ComponentName;

.field final mTargetProcess:Ljava/lang/String;

.field final mTargetUid:I

.field mTime:J


# direct methods
.method constructor <init>(ILjava/lang/String;ILandroid/content/ComponentName;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceUid"    # I
    .param p2, "sourceProcess"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "targetComponent"    # Landroid/content/ComponentName;
    .param p5, "targetProcess"    # Ljava/lang/String;

    .line 1337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mLastState:I

    .line 1333
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mStateTimes:[J

    .line 1338
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    .line 1339
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    .line 1340
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    .line 1341
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    .line 1342
    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    .line 1343
    return-void
.end method
