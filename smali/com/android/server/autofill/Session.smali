.class final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# static fields
.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field private static final TAG:Ljava/lang/String; = "AutofillSession"

.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field private mActivityToken:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAssistReceiver:Landroid/app/IAssistDataReceiver;

.field private mAugmentedAutofillDestroyer:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mAugmentedAutofillableIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mAugmentedRequestsLogs:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/view/autofill/IAutoFillManagerClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientState:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mClientVulture:Landroid/os/IBinder$DeathRecipient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mContexts:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentViewId:Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mFlags:I

.field private mForAugmentedAutofillOnly:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHasCallback:Z

.field private mIsSaving:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field private final mRequestLogs:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mResponses:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveOnAllViewsInvisible:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSelectedDatasetIds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

.field private final mStartTime:J

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUiShownTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mViewStates:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ViewState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWtfHistory:Landroid/util/LocalLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final taskId:I

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZI)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .param p2, "ui"    # Lcom/android/server/autofill/ui/AutoFillUI;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "userId"    # I
    .param p6, "lock"    # Ljava/lang/Object;
    .param p7, "sessionId"    # I
    .param p8, "taskId"    # I
    .param p9, "uid"    # I
    .param p10, "activityToken"    # Landroid/os/IBinder;
    .param p11, "client"    # Landroid/os/IBinder;
    .param p12, "hasCallback"    # Z
    .param p13, "uiLatencyHistory"    # Landroid/util/LocalLog;
    .param p14, "wtfHistory"    # Landroid/util/LocalLog;
    .param p15, "serviceComponentName"    # Landroid/content/ComponentName;
    .param p16, "componentName"    # Landroid/content/ComponentName;
    .param p17, "compatMode"    # Z
    .param p18, "bindInstantServiceAllowed"    # Z
    .param p19, "forAugmentedAutofillOnly"    # Z
    .param p20, "flags"    # I

    .line 640
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 256
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 297
    new-instance v0, Lcom/android/server/autofill/Session$1;

    invoke-direct {v0, v6}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    .line 641
    const/4 v0, 0x0

    if-gez v7, :cond_0

    .line 642
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Non-positive sessionId: %s"

    invoke-direct {v6, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    :cond_0
    iput v7, v6, Lcom/android/server/autofill/Session;->id:I

    .line 645
    move/from16 v8, p20

    iput v8, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 646
    move/from16 v9, p8

    iput v9, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 647
    move/from16 v10, p9

    iput v10, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 649
    move-object/from16 v11, p1

    iput-object v11, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 650
    move-object/from16 v12, p6

    iput-object v12, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 651
    move-object/from16 v13, p2

    iput-object v13, v6, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 652
    move-object/from16 v14, p4

    iput-object v14, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 653
    if-nez p15, :cond_1

    move-object v15, v0

    goto :goto_0

    .line 654
    :cond_1
    new-instance v15, Lcom/android/server/autofill/RemoteFillService;

    move-object v0, v15

    move-object/from16 v1, p3

    move-object/from16 v2, p15

    move/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    :goto_0
    iput-object v15, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 656
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 657
    move/from16 v1, p12

    iput-boolean v1, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 658
    move-object/from16 v2, p13

    iput-object v2, v6, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 659
    move-object/from16 v3, p14

    iput-object v3, v6, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 660
    move-object/from16 v4, p16

    iput-object v4, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 661
    move/from16 v5, p17

    iput-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 662
    move/from16 v15, p19

    iput-boolean v15, v6, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 663
    move-object/from16 v0, p11

    invoke-direct {v6, v0}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 665
    iget-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x38a

    invoke-direct {v6, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x5ac

    .line 666
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 665
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 667
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/Session;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/service/autofill/FillContext;
    .param p2, "x2"    # I

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Z

    .line 124
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/autofill/Session;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 124
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 124
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p1
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .line 3456
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3464
    :cond_0
    const-string v0, "VALUE_CHANGED"

    return-object v0

    .line 3462
    :cond_1
    const-string v0, "VIEW_EXITED"

    return-object v0

    .line 3460
    :cond_2
    const-string v0, "VIEW_ENTERED"

    return-object v0

    .line 3458
    :cond_3
    const-string v0, "START_SESSION"

    return-object v0
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3433
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 3434
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-nez v0, :cond_0

    .line 3435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTaggedDataToRequestLogLocked(tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no log for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    return-void

    .line 3439
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3440
    return-void
.end method

.method private cancelAugmentedAutofillLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2819
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2820
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 2821
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_0

    .line 2822
    const-string v2, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    return-void

    .line 2825
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAugmentedAutofillLocked() on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 2827
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_0

    .line 546
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 547
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 546
    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 548
    return-void

    .line 550
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/-$$Lambda$Session$PRbkIjhZfKjMPS1K8XiwST8ILPc;-><init>(Lcom/android/server/autofill/Session;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 570
    return-void
.end method

.method private createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2997
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2999
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 3001
    .local v1, "context":Landroid/service/autofill/FillContext;
    if-nez v1, :cond_0

    .line 3002
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3003
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    .line 3002
    const/4 v3, 0x0

    const-string v4, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3004
    return-object v3

    .line 3006
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    const-string v3, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3007
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3008
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .locals 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "state"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2940
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2941
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_0

    .line 2942
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_0

    .line 2944
    :cond_0
    new-instance v1, Lcom/android/server/autofill/ViewState;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v1

    .line 2945
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 2946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding autofillable view with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2948
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2949
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2951
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 2952
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 2954
    :cond_2
    return-object v0
.end method

.method private createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .locals 11
    .param p1, "saveInfo"    # Landroid/service/autofill/SaveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/SaveInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;"
        }
    .end annotation

    .line 1917
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1919
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    .line 1920
    .local v1, "sanitizerKeys":[Landroid/service/autofill/InternalSanitizer;
    if-nez v1, :cond_1

    return-object v0

    .line 1922
    :cond_1
    array-length v0, v1

    .line 1923
    .local v0, "size":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 1924
    .local v2, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v4, "AutofillSession"

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provided "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sanitizers"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 1926
    .local v3, "sanitizerValues":[[Landroid/view/autofill/AutofillId;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 1927
    aget-object v6, v1, v5

    .line 1928
    .local v6, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    aget-object v7, v3, v5

    .line 1929
    .local v7, "ids":[Landroid/view/autofill/AutofillId;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_3

    .line 1930
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sanitizer #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") for ids "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1930
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    :cond_3
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 1934
    .local v10, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    .end local v10    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1926
    .end local v6    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    .end local v7    # "ids":[Landroid/view/autofill/AutofillId;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1937
    .end local v5    # "i":I
    :cond_5
    return-object v2
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 1130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1132
    monitor-exit v0

    .line 1135
    goto :goto_0

    .line 1132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "intentSender":Landroid/content/IntentSender;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1133
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "intentSender":Landroid/content/IntentSender;
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private static dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "tag"    # I

    .line 3172
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v0

    .line 3173
    .local v0, "value":I
    if-eqz v0, :cond_0

    .line 3174
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3176
    :cond_0
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 3129
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3130
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3131
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 3132
    .local v0, "type":I
    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 3136
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3134
    :cond_0
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3133
    :cond_1
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3135
    :cond_2
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3138
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3139
    const-string v4, ", PKG="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3140
    const-string v4, ", SERVICE="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x38c

    .line 3141
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3140
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3142
    const-string v4, ", ORDINAL="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x5ae

    .line 3143
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3142
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3144
    const/16 v4, 0x5ac

    const-string v5, "FLAGS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3145
    const/16 v4, 0x38d

    const-string v5, "NUM_DATASETS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3146
    const/16 v4, 0x479

    const-string v5, "UI_LATENCY"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3147
    const/16 v4, 0x5ad

    .line 3148
    invoke-static {p1, v4}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v4

    .line 3149
    .local v4, "authStatus":I
    if-eqz v4, :cond_4

    .line 3150
    const-string v5, ", AUTH_STATUS="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3151
    const/16 v5, 0x390

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 3160
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3157
    :pswitch_0
    const-string v2, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3159
    :pswitch_1
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3155
    :pswitch_2
    const-string v2, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3153
    :cond_3
    const-string v2, "AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3164
    :cond_4
    const/16 v1, 0x4f7

    const-string v2, "FC_IDS"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3166
    const/16 v1, 0x586

    const-string v2, "COMPAT_MODE"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3168
    return-void

    :pswitch_data_0
    .packed-switch 0x466
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V
    .locals 10
    .param p1, "fillContext"    # Landroid/service/autofill/FillContext;
    .param p2, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 503
    nop

    .line 504
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 506
    .local v0, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 507
    .local v1, "numViewState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 508
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 510
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    aget-object v4, v0, v2

    .line 511
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v4, :cond_0

    .line 512
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillContextWithAllowedValuesLocked(): no node for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 519
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 520
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 521
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    new-instance v7, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v7}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 524
    .local v7, "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 525
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 528
    :cond_1
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v8, :cond_2

    .line 530
    iget-object v9, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 532
    iget-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v8, :cond_2

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_2

    .line 533
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 536
    :cond_2
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 507
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v7    # "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 5
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 478
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 479
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_1

    .line 480
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): no view state for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 483
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 484
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    if-nez v2, :cond_3

    .line 485
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findValueLocked(): no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 488
    :cond_3
    return-object v2
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 451
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 458
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v1, :cond_3

    .line 459
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findValueLocked(): looking on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " previous sessions for autofillId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 464
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 465
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    nop

    .line 466
    invoke-direct {v3, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 467
    .local v4, "previousValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_2

    .line 468
    invoke-direct {v3}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    return-object v5

    .line 463
    .end local v3    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v4    # "previousValue":Landroid/view/autofill/AutofillValue;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2005
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2007
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2008
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2009
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2010
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2011
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 2007
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2014
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .locals 5
    .param p1, "requestId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 949
    return-object v1

    .line 952
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 953
    .local v0, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 954
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 959
    .local v3, "context":Landroid/service/autofill/FillContext;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 961
    return-object v3

    .line 953
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 403
    .local v0, "numViewState":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 404
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 405
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 408
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getLastResponseIndexLocked()I
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3400
    const/4 v0, -0x1

    .line 3401
    .local v0, "lastResponseIdx":I
    const/4 v1, -0x1

    .line 3402
    .local v1, "lastResponseId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 3403
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3404
    .local v2, "responseCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 3405
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 3406
    move v0, v3

    .line 3404
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3410
    .end local v2    # "responseCount":I
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .locals 7
    .param p1, "logPrefixFmt"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1221
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1222
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1223
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 1224
    .local v0, "logPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v3, "AutofillSession"

    if-nez v2, :cond_2

    .line 1225
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no contexts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_1
    return-object v1

    .line 1228
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_4

    .line 1231
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no responses on session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_3
    return-object v1

    .line 1237
    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v2

    .line 1238
    .local v2, "lastResponseIdx":I
    const-string v4, ", mViewStates="

    if-gez v2, :cond_6

    .line 1239
    if-eqz v0, :cond_5

    .line 1240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": did not get last response. mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_5
    return-object v1

    .line 1246
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 1247
    .local v1, "response":Landroid/service/autofill/FillResponse;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 1248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": mResponses="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", mContexts="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_7
    return-object v1
.end method

.method private getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;
    .locals 5
    .param p2, "id"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ")",
            "Landroid/view/autofill/AutofillValue;"
        }
    .end annotation

    .line 1945
    .local p1, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    .line 1947
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1948
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1949
    .local v1, "sanitized":Landroid/view/autofill/AutofillValue;
    :goto_0
    if-nez v1, :cond_4

    .line 1950
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InternalSanitizer;

    .line 1951
    .local v2, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    if-nez v2, :cond_2

    .line 1952
    return-object p3

    .line 1955
    :cond_2
    invoke-virtual {v2, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1956
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_3

    .line 1957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") sanitized to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_3
    if-eqz v0, :cond_4

    .line 1960
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1963
    .end local v2    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    :cond_4
    return-object v1

    .line 1945
    .end local v0    # "state":Lcom/android/server/autofill/ViewState;
    .end local v1    # "sanitized":Landroid/view/autofill/AutofillValue;
    :cond_5
    :goto_1
    return-object p3
.end method

.method private getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1257
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1258
    .local v1, "response":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;
    .locals 2

    .line 3230
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3232
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 3233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 7
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1981
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 1982
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 1983
    .local v2, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 1985
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_1

    .line 1986
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 1987
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_0

    .line 1988
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValueFromContexts("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ") at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1992
    return-object v4

    .line 1981
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1996
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleLogContextCommitted()V
    .locals 6

    .line 1277
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_0
    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1279
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    if-nez v1, :cond_0

    .line 1282
    const-string v0, "AutofillSession"

    const-string v2, "handleLogContextCommitted(): last response is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1289
    .local v0, "genericUserData":Landroid/service/autofill/UserData;
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v2

    .line 1291
    .local v2, "packageUserData":Landroid/service/autofill/UserData;
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 1292
    const/4 v3, 0x0

    .local v3, "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1293
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1294
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v2}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1295
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_2
    if-eqz v2, :cond_3

    .line 1296
    move-object v3, v2

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1298
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_3
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v3

    .line 1301
    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v4

    .line 1304
    .local v4, "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1305
    invoke-direct {p0, v4, v3}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V

    goto :goto_1

    .line 1307
    :cond_4
    const/4 v5, 0x0

    invoke-direct {p0, v5, v5}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1309
    :goto_1
    return-void

    .line 1279
    .end local v0    # "genericUserData":Landroid/service/autofill/UserData;
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "packageUserData":Landroid/service/autofill/UserData;
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    .end local v4    # "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V
    .locals 2
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2461
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2463
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2464
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 2466
    :cond_0
    return-void
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 2475
    .local v0, "response":Landroid/service/autofill/FillResponse;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2477
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isSaveUiPendingLocked()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3391
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$LM4xf4dbxH_NTutQzBkaQNxKbV0(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$NtvZwhlT1c4eLjg2qI6EER2oCtY(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->logSaveShown()V

    return-void
.end method

.method public static synthetic lambda$cYu1t6lYVopApYW-vct82-7slZk(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    return-void
.end method

.method public static synthetic lambda$dldcS_opIdRI25w0DM6rSIaHIoc(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;)V

    return-void
.end method

.method static synthetic lambda$triggerAugmentedAutofillLocked$3(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 0
    .param p0, "remoteService"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 2812
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public static synthetic lambda$v6ZVyksJuHdWgJ1F8aoa_1LJWPo(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->handleLogContextCommitted()V

    return-void
.end method

.method private logAuthenticationStatusLocked(II)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "status"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3427
    nop

    .line 3428
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3427
    const/16 v1, 0x5ad

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3429
    return-void
.end method

.method private logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;)V"
        }
    .end annotation

    .line 1313
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1314
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1315
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 35
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FieldClassification;",
            ">;)V"
        }
    .end annotation

    .line 1321
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1322
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_0

    return-void

    .line 1324
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    .line 1325
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const-string v4, "AutofillSession"

    if-nez v3, :cond_2

    .line 1326
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logContextCommittedLocked(): ignored by flags "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :cond_1
    return-void

    .line 1330
    :cond_2
    const/4 v3, 0x0

    .line 1331
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1332
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v6, 0x0

    .line 1333
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1335
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 1336
    .local v8, "hasAtLeastOneDataset":Z
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1337
    .local v9, "responseCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const-string v11, "adding ignored dataset "

    const-string/jumbo v12, "logContextCommitted() skipping idless dataset "

    const-string/jumbo v13, "logContextCommitted() no datasets at "

    if-ge v10, v9, :cond_d

    .line 1338
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/FillResponse;

    .line 1339
    .local v14, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    .line 1340
    .local v15, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1343
    :cond_3
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_1
    move/from16 v16, v2

    .end local v2    # "flags":I
    .local v16, "flags":I
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_a

    .line 1344
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 1345
    .local v2, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v17, v5

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v17, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1346
    .local v5, "datasetId":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 1347
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v18, :cond_4

    .line 1348
    move-object/from16 v18, v6

    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v18, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1347
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v18, v6

    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 1351
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v18, v6

    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1352
    .end local v8    # "hasAtLeastOneDataset":Z
    .local v6, "hasAtLeastOneDataset":Z
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 1353
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    move v8, v6

    goto :goto_3

    .line 1354
    :cond_7
    :goto_2
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_8
    if-nez v3, :cond_9

    .line 1356
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v8

    .line 1358
    :cond_9
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v8, v6

    .line 1343
    .end local v2    # "dataset":Landroid/service/autofill/Dataset;
    .end local v5    # "datasetId":Ljava/lang/String;
    .end local v6    # "hasAtLeastOneDataset":Z
    .restart local v8    # "hasAtLeastOneDataset":Z
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto :goto_1

    .end local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_5

    .line 1340
    .end local v13    # "j":I
    .end local v16    # "flags":I
    .end local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v2, "flags":I
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_b
    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1341
    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16    # "flags":I
    .restart local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_4
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .end local v15    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_c
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    goto/16 :goto_0

    .end local v16    # "flags":I
    .end local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "flags":I
    .restart local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    .line 1364
    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .restart local v16    # "flags":I
    .restart local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 1366
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-nez v8, :cond_f

    if-nez v2, :cond_f

    .line 1367
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_e

    .line 1368
    const-string/jumbo v5, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    :cond_e
    return-void

    .line 1374
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v6, v17

    move-object/from16 v10, v18

    .end local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "i":I
    .local v6, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v10, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v5, v14, :cond_2a

    .line 1375
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/autofill/ViewState;

    .line 1376
    .local v14, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v15

    .line 1381
    .local v15, "state":I
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_29

    .line 1383
    move-object/from16 v30, v1

    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .local v30, "lastResponse":Landroid/service/autofill/FillResponse;
    and-int/lit16 v1, v15, 0x800

    if-eqz v1, :cond_15

    .line 1384
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "datasetId":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 1387
    move-object/from16 v31, v2

    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v31, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    .end local v15    # "state":I
    .local v17, "state":I
    const-string/jumbo v15, "logContextCommitted(): no dataset id on "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1393
    .end local v17    # "state":I
    .end local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v15    # "state":I
    :cond_10
    move-object/from16 v31, v2

    move/from16 v17, v15

    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v15    # "state":I
    .restart local v17    # "state":I
    .restart local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1394
    .local v2, "autofilledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v15

    .line 1395
    .local v15, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v2, :cond_12

    invoke-virtual {v2, v15}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1396
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_11

    .line 1397
    move-object/from16 v18, v2

    .end local v2    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .local v18, "autofilledValue":Landroid/view/autofill/AutofillValue;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v19, "currentValue":Landroid/view/autofill/AutofillValue;
    const-string/jumbo v15, "logContextCommitted(): ignoring changed "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " because it has same value that was autofilled"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1396
    .end local v18    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_11
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    .end local v2    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v18    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1395
    .end local v18    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_12
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    .line 1403
    .end local v2    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v15    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v18    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_13

    .line 1404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted() found changed state: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_13
    if-nez v6, :cond_14

    .line 1407
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    .line 1408
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v2

    .line 1410
    :cond_14
    iget-object v2, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    .end local v1    # "datasetId":Ljava/lang/String;
    .end local v18    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v19    # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1413
    .end local v17    # "state":I
    .end local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v15, "state":I
    :cond_15
    move-object/from16 v31, v2

    move/from16 v17, v15

    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v15    # "state":I
    .restart local v17    # "state":I
    .restart local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v14}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1414
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_17

    .line 1415
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_16

    .line 1416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1415
    :cond_16
    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_13

    .line 1422
    :cond_17
    if-eqz v8, :cond_28

    .line 1423
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    if-ge v2, v9, :cond_27

    .line 1424
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    .line 1425
    .local v15, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v18, v3

    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v18, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 1426
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_18

    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    goto/16 :goto_11

    .line 1431
    :cond_18
    const/16 v19, 0x0

    move/from16 v34, v19

    move-object/from16 v19, v7

    move/from16 v7, v34

    .local v7, "k":I
    .local v19, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_8
    move/from16 v32, v8

    .end local v8    # "hasAtLeastOneDataset":Z
    .local v32, "hasAtLeastOneDataset":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_24

    .line 1432
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 1433
    .local v8, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v20, v3

    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v20, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1434
    .local v3, "datasetId":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 1435
    sget-boolean v21, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v21, :cond_19

    .line 1436
    move/from16 v33, v9

    .end local v9    # "responseCount":I
    .local v33, "responseCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1435
    .end local v33    # "responseCount":I
    .restart local v9    # "responseCount":I
    :cond_19
    move/from16 v33, v9

    .line 1431
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v8    # "dataset":Landroid/service/autofill/Dataset;
    .end local v9    # "responseCount":I
    .restart local v33    # "responseCount":I
    :goto_9
    move-object/from16 v23, v1

    move-object/from16 v21, v12

    goto/16 :goto_10

    .line 1440
    .end local v33    # "responseCount":I
    .restart local v3    # "datasetId":Ljava/lang/String;
    .restart local v8    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v9    # "responseCount":I
    :cond_1a
    move/from16 v33, v9

    .line 1441
    .end local v9    # "responseCount":I
    .restart local v33    # "responseCount":I
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    .line 1442
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/16 v21, 0x0

    move-object/from16 v22, v8

    move/from16 v8, v21

    .local v8, "l":I
    .local v22, "dataset":Landroid/service/autofill/Dataset;
    :goto_a
    move-object/from16 v21, v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_1f

    .line 1443
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillValue;

    .line 1444
    .local v12, "candidate":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v12}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 1445
    sget-boolean v23, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v23, :cond_1b

    .line 1446
    move-object/from16 v23, v1

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v23, "currentValue":Landroid/view/autofill/AutofillValue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v9

    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v24, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const-string v9, "field "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was manually filled with value set by dataset "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1445
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_1b
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    .line 1450
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_b
    if-nez v19, :cond_1c

    .line 1451
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v19, v1

    goto :goto_c

    .line 1450
    :cond_1c
    move-object/from16 v1, v19

    .line 1453
    .end local v19    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_c
    iget-object v9, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1454
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1455
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_1d

    .line 1456
    move-object/from16 v19, v9

    .end local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArraySet;

    move-object/from16 v25, v12

    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v25, "candidate":Landroid/view/autofill/AutofillValue;
    const/4 v12, 0x1

    invoke-direct {v9, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 1457
    .end local v19    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v12, v14, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 1455
    .end local v25    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    :cond_1d
    move-object/from16 v19, v9

    move-object/from16 v25, v12

    .line 1459
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v25    # "candidate":Landroid/view/autofill/AutofillValue;
    :goto_d
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v1

    goto :goto_e

    .line 1444
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v25    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v19, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_1e
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    move-object/from16 v25, v12

    .line 1442
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_e
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move-object/from16 v9, v24

    goto :goto_a

    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_1f
    move-object/from16 v23, v1

    move-object/from16 v24, v9

    .line 1462
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8    # "l":I
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 1463
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1464
    :cond_20
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_21

    .line 1465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_21
    if-nez v18, :cond_22

    .line 1468
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v18, v1

    goto :goto_f

    .line 1467
    :cond_22
    move-object/from16 v1, v18

    .line 1470
    .end local v18    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_f
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v1

    .line 1431
    .end local v1    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v22    # "dataset":Landroid/service/autofill/Dataset;
    .end local v24    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v18    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_23
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v20

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_8

    .end local v20    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33    # "responseCount":I
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v9, "responseCount":I
    :cond_24
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v9    # "responseCount":I
    .restart local v20    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33    # "responseCount":I
    move-object/from16 v3, v18

    move-object/from16 v7, v19

    goto :goto_12

    .line 1426
    .end local v19    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v20    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v8, "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_25
    move-object/from16 v23, v1

    move-object/from16 v20, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .line 1427
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v20    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    :goto_11
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_26

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    .end local v15    # "response":Landroid/service/autofill/FillResponse;
    .end local v20    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_26
    move-object/from16 v3, v18

    .end local v18    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_12
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v23

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_7

    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_27
    move-object/from16 v23, v1

    move-object/from16 v18, v3

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v18    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    goto :goto_13

    .line 1422
    .end local v2    # "j":I
    .end local v18    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_28
    move-object/from16 v23, v1

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    goto :goto_13

    .line 1381
    .end local v17    # "state":I
    .end local v23    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v30    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    .local v15, "state":I
    :cond_29
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v21, v12

    move/from16 v17, v15

    .line 1374
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v14    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v15    # "state":I
    .restart local v30    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    :goto_13
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move/from16 v8, v32

    move/from16 v9, v33

    goto/16 :goto_6

    .end local v30    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v32    # "hasAtLeastOneDataset":Z
    .end local v33    # "responseCount":I
    .restart local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_2a
    move-object/from16 v30, v1

    move-object/from16 v31, v2

    move/from16 v32, v8

    move/from16 v33, v9

    .line 1482
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "i":I
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v30    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v31    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v32    # "hasAtLeastOneDataset":Z
    .restart local v33    # "responseCount":I
    const/4 v1, 0x0

    .line 1483
    .local v1, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 1486
    .local v2, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_2b

    .line 1487
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1488
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 1489
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 1490
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_14
    if-ge v5, v4, :cond_2b

    .line 1491
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 1492
    .local v8, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1493
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1490
    .end local v8    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 1498
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_2b
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v12, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v23, v10

    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-object/from16 v28, v11

    move/from16 v29, v12

    invoke-virtual/range {v17 .. v29}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1502
    return-void
.end method

.method private logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V
    .locals 25
    .param p1, "fcStrategy"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p2, "userData"    # Landroid/service/autofill/FieldClassificationUserData;

    .line 1511
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v15

    .line 1512
    .local v15, "userValues":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v14

    .line 1514
    .local v14, "categoryIds":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v19

    .line 1515
    .local v19, "defaultAlgorithm":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v20

    .line 1517
    .local v20, "defaultArgs":Landroid/os/Bundle;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1518
    .local v21, "algorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v22

    .line 1521
    .local v22, "args":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    array-length v0, v15

    array-length v1, v14

    if-eq v0, v1, :cond_0

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_2

    .line 1529
    :cond_0
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v13

    .line 1531
    .local v13, "maxFieldsSize":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1532
    .local v7, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1536
    .local v8, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v1, v9, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1537
    :try_start_0
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1538
    .local v0, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    .line 1543
    .local v12, "viewsSize":I
    new-array v10, v12, [Landroid/view/autofill/AutofillId;

    .line 1544
    .local v10, "autofillIds":[Landroid/view/autofill/AutofillId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v1

    .line 1545
    .local v11, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v1, 0x0

    .line 1546
    .local v1, "k":I
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move/from16 v23, v1

    .end local v1    # "k":I
    .local v23, "k":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1547
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v3, v23, 0x1

    .end local v23    # "k":I
    .local v3, "k":I
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v4, v10, v23

    .line 1549
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v23, v3

    goto :goto_0

    .line 1552
    .end local v3    # "k":I
    .restart local v23    # "k":I
    :cond_1
    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v12

    move-object v4, v10

    move-object/from16 v24, v0

    move-object v0, v5

    .end local v0    # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .local v24, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    move-object v5, v15

    move-object v9, v6

    move-object v6, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/autofill/-$$Lambda$Session$PBwPPZBgjCZzQ_ztfoUbwBZupu8;-><init>(Lcom/android/server/autofill/Session;I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v9, v0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    move-object v0, v11

    .end local v11    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v0, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    move-object v11, v9

    .line 1619
    .local v11, "callback":Landroid/os/RemoteCallback;
    move-object v1, v10

    .end local v10    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .local v1, "autofillIds":[Landroid/view/autofill/AutofillId;
    move-object/from16 v10, p1

    move v2, v12

    .end local v12    # "viewsSize":I
    .local v2, "viewsSize":I
    move-object v12, v0

    move v3, v13

    .end local v13    # "maxFieldsSize":I
    .local v3, "maxFieldsSize":I
    move-object v13, v15

    move-object v4, v14

    .end local v14    # "categoryIds":[Ljava/lang/String;
    .end local v15    # "userValues":[Ljava/lang/String;
    .local v4, "categoryIds":[Ljava/lang/String;
    .local v5, "userValues":[Ljava/lang/String;
    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    invoke-virtual/range {v10 .. v18}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 1621
    return-void

    .line 1538
    .end local v0    # "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v1    # "autofillIds":[Landroid/view/autofill/AutofillId;
    .end local v2    # "viewsSize":I
    .end local v3    # "maxFieldsSize":I
    .end local v4    # "categoryIds":[Ljava/lang/String;
    .end local v5    # "userValues":[Ljava/lang/String;
    .end local v11    # "callback":Landroid/os/RemoteCallback;
    .end local v23    # "k":I
    .end local v24    # "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    .restart local v13    # "maxFieldsSize":I
    .restart local v14    # "categoryIds":[Ljava/lang/String;
    .restart local v15    # "userValues":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    .end local v13    # "maxFieldsSize":I
    .end local v14    # "categoryIds":[Ljava/lang/String;
    .end local v15    # "userValues":[Ljava/lang/String;
    .restart local v3    # "maxFieldsSize":I
    .restart local v4    # "categoryIds":[Ljava/lang/String;
    .restart local v5    # "userValues":[Ljava/lang/String;
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1

    .line 1521
    .end local v3    # "maxFieldsSize":I
    .end local v4    # "categoryIds":[Ljava/lang/String;
    .end local v5    # "userValues":[Ljava/lang/String;
    .end local v7    # "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v8    # "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    .restart local v14    # "categoryIds":[Ljava/lang/String;
    .restart local v15    # "userValues":[Ljava/lang/String;
    :cond_2
    move-object v4, v14

    move-object v5, v15

    .line 1522
    .end local v14    # "categoryIds":[Ljava/lang/String;
    .end local v15    # "userValues":[Ljava/lang/String;
    .restart local v4    # "categoryIds":[Ljava/lang/String;
    .restart local v5    # "userValues":[Ljava/lang/String;
    :goto_2
    const/4 v0, -0x1

    if-nez v5, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    array-length v1, v5

    .line 1523
    .local v1, "valuesLength":I
    :goto_3
    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    array-length v0, v4

    .line 1524
    .local v0, "idsLength":I
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScores(): user data mismatch: values.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ids.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return-void
.end method

.method private logSaveShown()V
    .locals 3

    .line 1912
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    .line 1913
    return-void
.end method

.method private mergePreviousSessionLocked(Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "forSave"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    .line 2132
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2134
    .local v0, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v0, :cond_7

    .line 2135
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_0

    .line 2136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2137
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2136
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2140
    .local v1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 2141
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2142
    .local v5, "previousSession":Lcom/android/server/autofill/Session;
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 2143
    .local v6, "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    if-nez v6, :cond_1

    .line 2144
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): Not merging null contexts from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    goto :goto_1

    .line 2148
    :cond_1
    if-eqz p1, :cond_2

    .line 2149
    invoke-direct {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2151
    :cond_2
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_3

    .line 2152
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " context from previous session #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2156
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v7, :cond_5

    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    .line 2157
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_4

    .line 2158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "): setting client state from previous session"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_4
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2140
    .end local v5    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v6    # "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2164
    .end local v4    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2170
    .end local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2172
    .restart local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :goto_2
    return-object v1
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 1
    .param p1, "category"    # I

    .line 3414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;
    .locals 3
    .param p1, "category"    # I
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 3418
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private notifyUnavailableToClient(ILjava/util/ArrayList;)V
    .locals 5
    .param p1, "sessionFinishedState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2549
    .local p2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2550
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 2552
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v1, :cond_1

    .line 2553
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_0

    .line 2554
    :cond_1
    if-eqz p1, :cond_2

    .line 2555
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2559
    :cond_2
    :goto_0
    goto :goto_1

    .line 2557
    :catch_0
    move-exception v1

    .line 2558
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client no fill UI: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2560
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 2561
    return-void

    .line 2560
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "timedOut"    # Z
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 839
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 840
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 842
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onFillRequestFailureOrTimeout(req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    monitor-exit v1

    return-void

    .line 846
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    .line 847
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishing session due to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    if-eqz p2, :cond_1

    const-string/jumbo v4, "timeout"

    goto :goto_0

    :cond_1
    const-string v4, "failure"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 851
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    .line 852
    .local v2, "requestLog":Landroid/metrics/LogMaker;
    if-nez v2, :cond_3

    .line 853
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onFillRequestFailureOrTimeout(): no log for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 855
    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/16 v3, 0xb

    :goto_1
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 857
    :goto_2
    if-eqz v0, :cond_6

    .line 858
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v3

    .line 859
    .local v3, "targetSdk":I
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5

    .line 860
    const/4 v0, 0x0

    .line 861
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFillRequestFailureOrTimeout(): not showing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "\' because service\'s targetting API "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_5
    if-eqz p3, :cond_6

    .line 865
    const/16 v4, 0x624

    .line 866
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 865
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 869
    .end local v2    # "requestLog":Landroid/metrics/LogMaker;
    .end local v3    # "targetSdk":I
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 872
    if-eqz v0, :cond_7

    .line 873
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 875
    :cond_7
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 876
    return-void

    .line 869
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private processNullResponseLocked(II)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2675
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 2676
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x10400b9

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2679
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 2682
    .local v0, "context":Landroid/service/autofill/FillContext;
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1

    .line 2683
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    .line 2684
    .local v2, "structure":Landroid/app/assist/AssistStructure;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 2685
    .local v2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_0

    .line 2686
    .end local v2    # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processNullResponseLocked(): no context for req "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    const/4 v2, 0x0

    .line 2690
    .restart local v2    # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 2694
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2695
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v3, :cond_3

    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_3

    .line 2696
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    .line 2697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canceling session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null and it cannot be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 2702
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    goto :goto_2

    .line 2704
    :cond_3
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_5

    .line 2705
    and-int/lit8 v3, p2, 0x4

    const-string/jumbo v4, "keeping session "

    if-eqz v3, :cond_4

    .line 2706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null and augmented service is disabled for password fields. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2710
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " when service returned null but it can be augmented. AutofillableIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    :cond_5
    :goto_1
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 2716
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2719
    goto :goto_2

    .line 2717
    :catch_0
    move-exception v3

    .line 2718
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error setting client to autofill-only"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2721
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newClientState"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2836
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 2837
    .local v0, "requestId":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 2838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processResponseLocked(): mCurrentViewId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reqId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", resp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",newClientState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2843
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 2847
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 2849
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2850
    if-eqz p2, :cond_2

    move-object v1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2852
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2853
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 2855
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_3

    .line 2856
    return-void

    .line 2860
    :cond_3
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2861
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2862
    return-void
.end method

.method private removeSelf()V
    .locals 2

    .line 3343
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3344
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3345
    monitor-exit v0

    .line 3346
    return-void

    .line 3345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "oldResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p3, "newClientState"    # Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2664
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 2666
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 2668
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2670
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 2671
    return-void
.end method

.method private requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .locals 10
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "newState"    # I
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 578
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    const-string v1, ", flags="

    const/4 v2, 0x1

    const-string v3, "AutofillSession"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 588
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 593
    :cond_1
    sget-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 594
    .local v0, "requestId":I
    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_1

    .line 597
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    add-int/2addr v4, v2

    .line 598
    .local v4, "ordinal":I
    const/16 v2, 0x38b

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v5, 0x5ae

    .line 599
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 600
    .local v2, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_2

    .line 601
    const/16 v5, 0x5ac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 603
    :cond_2
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 605
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    .line 606
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting structure for request #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,requestId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 618
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 619
    .local v1, "receiverExtras":Landroid/os/Bundle;
    const-string v5, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    .local v5, "identity":J
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Landroid/app/IAssistDataReceiver;

    iget-object v9, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v7, v8, v1, v9, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 624
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to request autofill data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :cond_4
    :try_start_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    nop

    .line 631
    .end local v1    # "receiverExtras":Landroid/os/Bundle;
    .end local v5    # "identity":J
    goto :goto_0

    .line 627
    .restart local v1    # "receiverExtras":Landroid/os/Bundle;
    .restart local v5    # "identity":J
    :catchall_0
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "requestId":I
    .end local v2    # "log":Landroid/metrics/LogMaker;
    .end local v4    # "ordinal":I
    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 629
    .end local v1    # "receiverExtras":Landroid/os/Bundle;
    .end local v5    # "identity":J
    .restart local v0    # "requestId":I
    .restart local v2    # "log":Landroid/metrics/LogMaker;
    .restart local v4    # "ordinal":I
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local p2    # "newState":I
    .restart local p3    # "flags":I
    :catch_0
    move-exception v1

    .line 632
    :goto_0
    return-void

    .line 579
    .end local v0    # "requestId":I
    .end local v2    # "log":Landroid/metrics/LogMaker;
    .end local v4    # "ordinal":I
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_6

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_6
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 585
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 586
    return-void
.end method

.method private requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p3, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2191
    and-int/lit8 v0, p3, 0x1

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1

    .line 2192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2193
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Re-starting session on view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " and flags "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_0
    const/16 v0, 0x100

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2195
    return-void

    .line 2199
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    const-string v2, ": "

    if-eqz v0, :cond_3

    .line 2200
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2202
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2201
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_2
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    goto :goto_0

    .line 2206
    :cond_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting new partition for view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2207
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_4
    :goto_0
    return-void
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 702
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 703
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 704
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not set binder death listener on autofill client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .locals 9
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "state"    # I
    .param p3, "clearResponse"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2869
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 2870
    .local v0, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2871
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2872
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 2873
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_0

    .line 2874
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring null dataset on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2875
    goto :goto_1

    .line 2877
    :cond_0
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2871
    .end local v4    # "dataset":Landroid/service/autofill/Dataset;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_4

    .line 2879
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2880
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 2881
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v7

    .line 2882
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez p3, :cond_3

    .line 2883
    invoke-virtual {v7, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_3

    .line 2885
    :cond_3
    invoke-virtual {v7, v2}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2880
    .end local v6    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2889
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    .line 2890
    .local v3, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v3, :cond_6

    .line 2891
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2892
    .local v4, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_5

    .line 2893
    array-length v5, v4

    move v6, v1

    :goto_5
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 2894
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v7, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2893
    .end local v7    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 2897
    :cond_5
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 2898
    .local v5, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_6

    .line 2899
    array-length v6, v5

    move v7, v1

    :goto_6
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 2900
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v8, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2899
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 2905
    .end local v4    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "optionalIds":[Landroid/view/autofill/AutofillId;
    :cond_6
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 2906
    .local v4, "authIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_7

    .line 2907
    array-length v5, v4

    :goto_7
    if-ge v1, v5, :cond_7

    aget-object v6, v4, v1

    .line 2908
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 2907
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2911
    :cond_7
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .locals 8
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "state"    # I
    .param p4, "clearResponse"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2919
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 2920
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 2921
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 2922
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 2923
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 2924
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 2925
    .local v5, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    .line 2926
    .local v6, "datasetId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 2927
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 2929
    :cond_0
    if-eqz p1, :cond_1

    .line 2930
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_1

    .line 2931
    :cond_1
    if-eqz p4, :cond_2

    .line 2932
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 2921
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    .end local v5    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v6    # "datasetId":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2935
    .end local v2    # "j":I
    :cond_3
    return-void
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 11
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2222
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2223
    return v1

    .line 2226
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2227
    .local v0, "numResponses":I
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 2228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting a new partition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reached maximum of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2229
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2228
    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    return v3

    .line 2233
    :cond_1
    const/4 v2, 0x0

    .local v2, "responseNum":I
    :goto_0
    if-ge v2, v0, :cond_8

    .line 2234
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/FillResponse;

    .line 2236
    .local v4, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2237
    return v3

    .line 2240
    :cond_2
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    .line 2241
    .local v5, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v5, :cond_4

    .line 2242
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2243
    invoke-virtual {v5}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2244
    :cond_3
    return v3

    .line 2248
    :cond_4
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v6

    .line 2249
    .local v6, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v6, :cond_6

    .line 2250
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 2252
    .local v7, "numDatasets":I
    const/4 v8, 0x0

    .local v8, "dataSetNum":I
    :goto_1
    if-ge v8, v7, :cond_6

    .line 2253
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    .line 2255
    .local v9, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v9, :cond_5

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2256
    return v3

    .line 2252
    .end local v9    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2261
    .end local v7    # "numDatasets":I
    .end local v8    # "dataSetNum":I
    :cond_6
    invoke-virtual {v4}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2262
    return v3

    .line 2233
    .end local v4    # "response":Landroid/service/autofill/FillResponse;
    .end local v5    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .end local v6    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2266
    .end local v2    # "responseNum":I
    :cond_8
    return v1
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;

    .line 3014
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3015
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 3016
    monitor-exit v0

    .line 3019
    goto :goto_0

    .line 3016
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "authenticationId":I
    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3017
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "authenticationId":I
    .restart local p2    # "intent":Landroid/content/IntentSender;
    .restart local p3    # "fillInIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3018
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3020
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .locals 17
    .param p1, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2733
    move-object/from16 v0, p0

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2734
    return-object v2

    .line 2738
    :cond_0
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2739
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v1

    .line 2740
    .local v1, "supportedModes":I
    const-string v3, "AutofillSession"

    if-nez v1, :cond_2

    .line 2741
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2742
    :cond_1
    return-object v2

    .line 2747
    :cond_2
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2748
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v4

    .line 2749
    .local v4, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v4, :cond_4

    .line 2750
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    :cond_3
    return-object v2

    .line 2756
    :cond_4
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_b

    .line 2757
    const/4 v12, 0x1

    .line 2763
    .local v12, "mode":I
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v5, :cond_5

    .line 2764
    const-string/jumbo v5, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    return-object v2

    .line 2768
    :cond_5
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2769
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v13

    .line 2771
    .local v13, "isWhitelisted":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aug:id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " u="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " a="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2773
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " f="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2777
    .local v14, "historyItem":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v5, v14}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 2779
    if-nez v13, :cond_7

    .line 2780
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_6

    .line 2781
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 2782
    invoke-static {v6}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not whitelisted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2781
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :cond_6
    return-object v2

    .line 2787
    :cond_7
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_8

    .line 2788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calling Augmented Autofill Service ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") on view "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " using suggestion mode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    invoke-static {v12}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " when server returned null for session "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2788
    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    :cond_8
    iget-object v2, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2796
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2797
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    .line 2799
    .local v3, "currentValue":Landroid/view/autofill/AutofillValue;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_9

    .line 2800
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 2802
    :cond_9
    const/16 v5, 0x65e

    .line 2803
    invoke-virtual {v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2802
    invoke-direct {v0, v5, v6}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v15

    .line 2804
    .local v15, "log":Landroid/metrics/LogMaker;
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2806
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-static {v5}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v16

    .line 2808
    .local v16, "focusedId":Landroid/view/autofill/AutofillId;
    iget v6, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v7, v0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v8, v0, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    move-object v5, v4

    move-object/from16 v10, v16

    move-object v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V

    .line 2811
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v5, :cond_a

    .line 2812
    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;

    invoke-direct {v5, v4}, Lcom/android/server/autofill/-$$Lambda$Session$dezqLt87MD2Cwsac8Jv6xKKv0sw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 2814
    :cond_a
    iget-object v5, v0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object v5

    .line 2759
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v3    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v12    # "mode":I
    .end local v13    # "isWhitelisted":Z
    .end local v14    # "historyItem":Ljava/lang/String;
    .end local v15    # "log":Landroid/metrics/LogMaker;
    .end local v16    # "focusedId":Landroid/view/autofill/AutofillId;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported Smart Suggestion mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    return-object v2
.end method

.method private unlinkClientVultureLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 724
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_1

    .line 725
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 726
    .local v0, "unlinked":Z
    if-nez v0, :cond_0

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlinking vulture from death failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 731
    .end local v0    # "unlinked":Z
    :cond_1
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2567
    move-object/from16 v1, p0

    const-string v2, "AutofillSession"

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    .line 2568
    .local v3, "response":Landroid/service/autofill/FillResponse;
    if-nez v3, :cond_0

    return-void

    .line 2570
    :cond_0
    const/4 v0, 0x0

    .line 2571
    .local v0, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2572
    const/4 v5, 0x1

    .line 2573
    .local v5, "saveOnFinish":Z
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 2576
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 2577
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 2578
    .local v8, "saveTriggerId":Landroid/view/autofill/AutofillId;
    if-eqz v8, :cond_1

    .line 2579
    const/16 v9, 0x4cc

    invoke-direct {v1, v9}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 2581
    :cond_1
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    .line 2582
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    iput-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2585
    iget-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v10, :cond_5

    .line 2586
    if-nez v0, :cond_3

    .line 2587
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    .line 2589
    :cond_3
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 2590
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2593
    :cond_4
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 2594
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2597
    :cond_5
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_6

    .line 2598
    const/4 v5, 0x0

    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    goto :goto_1

    .line 2597
    :cond_6
    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    goto :goto_1

    .line 2602
    .end local v8    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .end local v9    # "flags":I
    :cond_7
    const/4 v9, 0x0

    .line 2603
    .restart local v9    # "flags":I
    const/4 v8, 0x0

    move v14, v5

    move-object v15, v8

    move v13, v9

    move-object v5, v0

    .line 2609
    .end local v0    # "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "flags":I
    .local v5, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v13, "flags":I
    .local v14, "saveOnFinish":Z
    .local v15, "saveTriggerId":Landroid/view/autofill/AutofillId;
    :goto_1
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    .line 2610
    .local v12, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v0, 0x0

    .line 2611
    .local v0, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-eqz v12, :cond_d

    .line 2612
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 2613
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    .line 2614
    .local v9, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 2615
    .local v10, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-nez v10, :cond_8

    goto :goto_4

    .line 2617
    :cond_8
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_b

    .line 2618
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 2619
    .local v4, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 2620
    :cond_9
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 2617
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 2612
    .end local v9    # "dataset":Landroid/service/autofill/Dataset;
    .end local v10    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v11    # "j":I
    :cond_b
    :goto_4
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_c
    move-object v4, v0

    goto :goto_5

    .line 2611
    .end local v8    # "i":I
    :cond_d
    move-object v4, v0

    .line 2627
    .end local v0    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v4, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_5
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_f

    .line 2628
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateTrackedIdsLocked(): "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " => "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " triggerId: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " saveOnFinish:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " hasSaveInfo: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :goto_6
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 2634
    :catch_0
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move/from16 v17, v14

    goto :goto_8

    .line 2632
    :cond_f
    :goto_7
    :try_start_2
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v9, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v10

    iget-boolean v11, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 2633
    invoke-static {v4}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2632
    move-object v7, v12

    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move v12, v14

    move/from16 v16, v13

    .end local v13    # "flags":I
    .local v16, "flags":I
    move-object v13, v0

    move/from16 v17, v14

    .end local v14    # "saveOnFinish":Z
    .local v17, "saveOnFinish":Z
    move-object v14, v15

    :try_start_3
    invoke-interface/range {v8 .. v14}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2636
    goto :goto_9

    .line 2634
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v16    # "flags":I
    .end local v17    # "saveOnFinish":Z
    .restart local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v13    # "flags":I
    .restart local v14    # "saveOnFinish":Z
    :catch_2
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move/from16 v17, v14

    .line 2635
    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v13    # "flags":I
    .end local v14    # "saveOnFinish":Z
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v16    # "flags":I
    .restart local v17    # "saveOnFinish":Z
    :goto_8
    const-string v8, "Cannot set tracked ids"

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2637
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9
    return-void
.end method

.method private updateValuesForSaveLocked()V
    .locals 15

    .line 2022
    nop

    .line 2023
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2025
    .local v0, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2026
    .local v1, "numContexts":I
    const/4 v2, 0x0

    .local v2, "contextNum":I
    :goto_0
    if-ge v2, v1, :cond_9

    .line 2027
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 2029
    .local v3, "context":Landroid/service/autofill/FillContext;
    nop

    .line 2030
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    .line 2032
    .local v4, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v6, "updateValuesForSaveLocked(): updating "

    const-string v7, "AutofillSession"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_0
    const/4 v5, 0x0

    .local v5, "viewStateNum":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_7

    .line 2035
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 2037
    .local v8, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v9, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2038
    .local v9, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2039
    .local v10, "value":Landroid/view/autofill/AutofillValue;
    if-nez v10, :cond_1

    .line 2040
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2043
    :cond_1
    aget-object v11, v4, v5

    .line 2044
    .local v11, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v11, :cond_2

    .line 2045
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): did not find node with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    goto :goto_2

    .line 2048
    :cond_2
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_3

    .line 2049
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2054
    .local v12, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    if-nez v12, :cond_4

    .line 2056
    invoke-direct {p0, v0, v9, v10}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2058
    :cond_4
    if-eqz v12, :cond_5

    .line 2059
    invoke-virtual {v11, v12}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_2

    .line 2060
    :cond_5
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_6

    .line 2061
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateValuesForSaveLocked(): not updating field "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " because it failed sanitization"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    .end local v8    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v9    # "id":Landroid/view/autofill/AutofillId;
    .end local v10    # "value":Landroid/view/autofill/AutofillValue;
    .end local v11    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v12    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2067
    .end local v5    # "viewStateNum":I
    :cond_7
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2069
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_8

    .line 2070
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateValuesForSaveLocked(): dumping structure of "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " before calling service.save()"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2026
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    .end local v4    # "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2075
    .end local v2    # "contextNum":I
    :cond_9
    return-void
.end method

.method private writeLog(I)V
    .locals 2
    .param p1, "category"    # I

    .line 3422
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3423
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 3443
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3444
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3445
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3448
    if-eqz p1, :cond_0

    .line 3449
    const-string v1, "AutofillSession"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3451
    :cond_0
    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    :goto_0
    return-void

    .line 3446
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 971
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authenticate(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; datasetIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; intentSender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 977
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 978
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#authenticate() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    monitor-exit v0

    return-void

    .line 982
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 983
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 984
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 985
    monitor-exit v0

    return-void

    .line 987
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 989
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 991
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 992
    .local v0, "authenticationId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LM4xf4dbxH_NTutQzBkaQNxKbV0;

    .line 994
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 992
    invoke-static {v3, p0, v4, p3, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 995
    return-void

    .line 987
    .end local v0    # "authenticationId":I
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method autoFill(IILandroid/service/autofill/Dataset;Z)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;
    .param p4, "generateEvent"    # Z

    .line 2958
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 2959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoFill(): requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; datasetIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; dataset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2963
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 2964
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    monitor-exit v0

    return-void

    .line 2969
    :cond_1
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2970
    if-eqz p4, :cond_2

    .line 2971
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2974
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 2975
    monitor-exit v0

    return-void

    .line 2979
    :cond_3
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2980
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 2981
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 2982
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_4

    .line 2983
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 2984
    monitor-exit v0

    return-void

    .line 2986
    :cond_4
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v2

    .line 2988
    .local v2, "authenticationId":I
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 2990
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "authenticationId":I
    monitor-exit v0

    .line 2991
    return-void

    .line 2990
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .locals 12
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 3179
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3180
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 3181
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#autoFillApp() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3187
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3188
    .local v1, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3189
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3190
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .line 3191
    .local v4, "waitingDatasetAuth":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 3192
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3193
    goto :goto_1

    .line 3195
    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 3196
    .local v6, "viewId":Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3197
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3198
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/autofill/ViewState;

    .line 3199
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v7, :cond_3

    .line 3200
    invoke-virtual {v7}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v8

    const/16 v9, 0x40

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 3201
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_2

    .line 3202
    const-string v8, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autofillApp(): view "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " waiting auth"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_2
    const/4 v4, 0x1

    .line 3205
    invoke-virtual {v7, v9}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3191
    .end local v6    # "viewId":Landroid/view/autofill/AutofillId;
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3208
    .end local v5    # "i":I
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 3209
    if-eqz v4, :cond_5

    .line 3210
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v5, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3212
    :cond_5
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_6

    const-string v5, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    :cond_6
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v6, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v5, v6, v2, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;)V

    .line 3215
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 3216
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 3217
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 3219
    :cond_7
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3221
    :cond_8
    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-direct {p0, v5, p1, v6, v7}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3225
    .end local v1    # "entryCount":I
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v4    # "waitingDatasetAuth":Z
    :cond_9
    goto :goto_2

    .line 3223
    :catch_0
    move-exception v1

    .line 3224
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error autofilling activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2
    monitor-exit v0

    .line 3227
    return-void

    .line 3226
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method callSaveLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2082
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 2083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#callSaveLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    return-void

    .line 2087
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2088
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2089
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2088
    const-string v2, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2090
    return-void

    .line 2093
    :cond_1
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSaveLocked("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mViewStates="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2096
    const-string v0, "callSaveLocked(): no contexts"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-void

    .line 2100
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2104
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 2105
    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2107
    .local v0, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2109
    .local v1, "saveRequest":Landroid/service/autofill/SaveRequest;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    .line 2110
    return-void
.end method

.method public cancelSave()V
    .locals 4

    .line 1037
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1038
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1040
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1041
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#cancelSave() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    monitor-exit v0

    return-void

    .line 1045
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1046
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1048
    return-void

    .line 1045
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method destroyAugmentedAutofillWindowsLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3333
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3334
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3337
    :cond_0
    return-void
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3249
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 3250
    const/4 v0, 0x0

    return-object v0

    .line 3252
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 3253
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3254
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3255
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 3258
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3259
    .local v0, "totalRequests":I
    const-string v1, "destroyLocked(): logging "

    const-string v3, "AutofillSession"

    if-lez v0, :cond_2

    .line 3260
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " requests"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 3262
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/metrics/LogMaker;

    .line 3263
    .local v5, "log":Landroid/metrics/LogMaker;
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v5}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3261
    .end local v5    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3267
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 3268
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    nop

    .line 3269
    .local v4, "totalAugmentedRequests":I
    if-lez v4, :cond_5

    .line 3270
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_4

    .line 3271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " augmented requests"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3273
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 3274
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/metrics/LogMaker;

    .line 3275
    .local v3, "log":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3273
    .end local v3    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3279
    .end local v1    # "i":I
    :cond_5
    const/16 v1, 0x397

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v3, 0x5af

    .line 3280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 3281
    .local v1, "log":Landroid/metrics/LogMaker;
    if-lez v4, :cond_6

    .line 3282
    const/16 v3, 0x65f

    .line 3283
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3282
    invoke-virtual {v1, v3, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3285
    :cond_6
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_7

    .line 3286
    const/16 v3, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3288
    :cond_7
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3290
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v2
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1079
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1081
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#dispatchUnhandledKey() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    monitor-exit v0

    return-void

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1087
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to dispatch unhandled key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1092
    :cond_1
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not dispatch unhandled key on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :goto_0
    monitor-exit v0

    .line 1096
    return-void

    .line 1095
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3030
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3031
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3032
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3033
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3034
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3035
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3036
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3037
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3038
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_0

    .line 3039
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3041
    :cond_0
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3042
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3044
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3045
    .local v1, "requestLogsSizes":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3046
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x23

    if-ge v2, v1, :cond_1

    .line 3047
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3048
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 3049
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": req="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3050
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", log="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v6}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3046
    .end local v5    # "requestId":I
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3052
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mResponses: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3053
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v5, "null"

    if-nez v2, :cond_2

    .line 3054
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3056
    :cond_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3057
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 3058
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3059
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3057
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3062
    .end local v2    # "i":I
    :cond_3
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurrentViewId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3063
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDestroyed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3064
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mIsSaving: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3065
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingSaveUi: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3066
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3067
    .local v2, "numberViews":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mViewStates size: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3068
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_4

    .line 3069
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3070
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3068
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3073
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mContexts: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3074
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 3075
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3076
    .local v3, "numContexts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_6

    .line 3077
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    .line 3079
    .local v6, "context":Landroid/service/autofill/FillContext;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3080
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_5

    .line 3081
    const-string v7, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3084
    invoke-virtual {v6}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 3076
    .end local v6    # "context":Landroid/service/autofill/FillContext;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3087
    .end local v3    # "numContexts":I
    .end local v5    # "i":I
    :cond_6
    goto :goto_6

    .line 3088
    :cond_7
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3091
    :goto_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mHasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3092
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v3, :cond_8

    .line 3093
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mClientState: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->getSize()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3094
    const-string v3, " bytes"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3096
    :cond_8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCompatMode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3097
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mUrlBar: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3098
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_9

    .line 3099
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3101
    :cond_9
    const-string v3, "id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3102
    const-string v3, " domain="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3103
    const-string v3, " text="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 3105
    :goto_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3107
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSelectedDatasetIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3108
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_a

    .line 3109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    :cond_a
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v3, :cond_b

    .line 3112
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3114
    :cond_b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v3, :cond_c

    .line 3115
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number augmented requests: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3116
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3119
    :cond_c
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 3120
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3121
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3123
    :cond_d
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz v3, :cond_e

    .line 3124
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3126
    :cond_e
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;

    .line 1007
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1009
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#fill() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    monitor-exit v0

    return-void

    .line 1013
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;

    .line 1016
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1014
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1017
    return-void

    .line 1013
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public findByAutofillId(Landroid/view/autofill/AutofillId;)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 414
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 415
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 416
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 417
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 418
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 421
    :cond_0
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    .local v3, "options":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 424
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    .line 425
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 426
    .local v5, "option":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    .line 428
    .end local v4    # "index":I
    .end local v5    # "option":Ljava/lang/CharSequence;
    :cond_2
    const-string v4, "AutofillSession"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "findByAutofillId(): no autofill options for id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v1    # "value":Landroid/view/autofill/AutofillValue;
    .end local v3    # "options":[Ljava/lang/CharSequence;
    :cond_3
    monitor-exit v0

    .line 433
    return-object v2

    .line 432
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public findRawValueByAutofillId(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 438
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3304
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 3305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceRemoveSelfIfForAugmentedAutofillOnly("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-nez v0, :cond_1

    return-void

    .line 3310
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 3311
    return-void
.end method

.method forceRemoveSelfLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 3300
    return-void
.end method

.method forceRemoveSelfLocked(I)V
    .locals 6
    .param p1, "clientState"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3315
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceRemoveSelfLocked(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 3318
    .local v0, "isPendingSaveUi":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 3319
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3320
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3321
    if-nez v0, :cond_1

    .line 3323
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3326
    goto :goto_0

    .line 3324
    :catch_0
    move-exception v2

    .line 3325
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error notifying client to finish session"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3328
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 3329
    return-void
.end method

.method getActivityTokenLocked()Landroid/os/IBinder;
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .locals 2

    .line 2542
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2543
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 2544
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSaveInfoFlagsLocked()I
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1263
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    .line 1264
    .local v0, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    :goto_0
    return v1
.end method

.method isDestroyed()Z
    .locals 2

    .line 2536
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2537
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 2538
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isSaveUiPendingForTokenLocked(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3383
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/PendingUi;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSavingLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1971
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    return v0
.end method

.method public synthetic lambda$cancelCurrentRequestLocked$0$Session(Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "canceledRequest"    # Ljava/lang/Integer;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 551
    const-string v0, "AutofillSession"

    if-eqz p2, :cond_0

    .line 552
    const-string v1, "cancelCurrentRequest(): unexpected exception"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 558
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 561
    .local v1, "numContexts":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 562
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 563
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCurrentRequest(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 565
    goto :goto_1

    .line 561
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 569
    .end local v1    # "numContexts":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic lambda$logFieldClassificationScore$2$Session(I[Landroid/view/autofill/AutofillId;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "viewsSize"    # I
    .param p2, "autofillIds"    # [Landroid/view/autofill/AutofillId;
    .param p3, "userValues"    # [Ljava/lang/String;
    .param p4, "categoryIds"    # [Ljava/lang/String;
    .param p5, "detectedFieldIds"    # Ljava/util/ArrayList;
    .param p6, "detectedFieldClassifications"    # Ljava/util/ArrayList;
    .param p7, "result"    # Landroid/os/Bundle;

    .line 1553
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v0, "AutofillSession"

    if-nez v5, :cond_1

    .line 1554
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "setFieldClassificationScore(): no results"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1556
    return-void

    .line 1558
    :cond_1
    const-string/jumbo v6, "scores"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 1559
    .local v6, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v6, :cond_2

    .line 1560
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No field classification score on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    return-void

    .line 1563
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .line 1566
    .local v8, "j":I
    const/4 v7, 0x0

    :goto_0
    move/from16 v9, p1

    if-ge v7, v9, :cond_c

    .line 1567
    :try_start_0
    aget-object v10, p2, v7

    .line 1571
    .local v10, "autofillId":Landroid/view/autofill/AutofillId;
    const/4 v11, 0x0

    .line 1572
    .local v11, "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v8, 0x0

    :goto_1
    array-length v12, v2

    if-ge v8, v12, :cond_8

    .line 1573
    aget-object v12, p4, v8

    .line 1574
    .local v12, "categoryId":Ljava/lang/String;
    iget-object v13, v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v13, v13, v7

    aget v13, v13, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1575
    .local v13, "score":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    const-string v15, " and id "

    if-lez v14, :cond_6

    .line 1576
    if-nez v11, :cond_3

    .line 1577
    :try_start_1
    new-instance v14, Landroid/util/ArrayMap;

    array-length v5, v2

    invoke-direct {v14, v5}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v14

    .line 1579
    :cond_3
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1580
    .local v5, "currentScore":Ljava/lang/Float;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_4

    .line 1581
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_7

    .line 1582
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "skipping score "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " because it\'s less than "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1587
    :cond_4
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_5

    .line 1588
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding score "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " at index "

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    :cond_5
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    nop

    .end local v5    # "currentScore":Ljava/lang/Float;
    goto :goto_2

    :cond_6
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_7

    .line 1593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skipping score 0 at index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "score":F
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 1596
    :cond_8
    if-nez v11, :cond_9

    .line 1597
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no score for autofillId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1602
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1603
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    const/4 v5, 0x0

    .end local v8    # "j":I
    .local v5, "j":I
    move v8, v5

    .end local v5    # "j":I
    .restart local v8    # "j":I
    :goto_3
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v8, v5, :cond_a

    .line 1604
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1605
    .local v5, "fieldId":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 1606
    .local v12, "score":F
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v5, v12}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1603
    nop

    .end local v5    # "fieldId":Ljava/lang/String;
    .end local v12    # "score":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1608
    :cond_a
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1609
    new-instance v5, Landroid/service/autofill/FieldClassification;

    invoke-direct {v5, v2}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1566
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v10    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v11    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_0

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v10, 0x1

    aput-object v5, v2, v10

    const/4 v5, 0x2

    aput-object v6, v2, v5

    const/4 v5, 0x3

    aput-object v0, v2, v5

    const-string v5, "Error accessing FC score at [%d, %d] (%s): %s"

    invoke-direct {v1, v0, v5, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    return-void

    .line 1614
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_c
    nop

    .line 1616
    invoke-direct {v1, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1617
    return-void
.end method

.method public synthetic lambda$setClientLocked$1$Session()V
    .locals 4

    .line 705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handling death of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " when saving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 712
    :goto_0
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logContextCommitted()V
    .locals 2

    .line 1272
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1273
    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .locals 16
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 2483
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2484
    :try_start_0
    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 2485
    const-string v0, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onFillReady() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    monitor-exit v1

    return-void

    .line 2489
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2491
    const/4 v0, 0x0

    .line 2492
    .local v0, "filterText":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2493
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 2498
    :cond_1
    move-object v13, v0

    .end local v0    # "filterText":Ljava/lang/String;
    .local v13, "filterText":Ljava/lang/String;
    :goto_0
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2499
    :try_start_1
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v14, v0

    .line 2500
    .local v14, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v15, v0

    .line 2501
    .local v15, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2502
    if-eqz v14, :cond_5

    if-nez v15, :cond_2

    goto/16 :goto_1

    .line 2506
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2507
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v10, v12, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v11, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2506
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, p0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 2510
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2511
    :try_start_2
    iget-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 2513
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 2514
    iget-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    iget-wide v4, v12, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v2, v4

    .line 2515
    .local v2, "duration":J
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_3

    .line 2516
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 2517
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shown in "

    .line 2518
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2520
    const-string v4, "AutofillSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " app="

    .line 2523
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " svc="

    .line 2524
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latency="

    .line 2525
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2526
    .local v0, "historyLog":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 2527
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 2529
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 2530
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 2529
    invoke-direct {v12, v4, v5, v6}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 2532
    .end local v0    # "historyLog":Ljava/lang/StringBuilder;
    .end local v2    # "duration":J
    :cond_4
    monitor-exit v1

    .line 2533
    return-void

    .line 2532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2503
    :cond_5
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFillReady(): no service label or icon"

    invoke-direct {v12, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2504
    return-void

    .line 2501
    .end local v14    # "serviceLabel":Ljava/lang/CharSequence;
    .end local v15    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2489
    .end local v13    # "filterText":Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 828
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 829
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .locals 19
    .param p1, "requestId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "requestFlags"    # I

    .line 741
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 742
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "AutofillSession"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call to Session#onFillRequestSuccess() rejected - session: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " destroyed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    monitor-exit v5

    return-void

    .line 748
    :cond_0
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    move-object v6, v0

    .line 749
    .local v6, "requestLog":Landroid/metrics/LogMaker;
    if-eqz v6, :cond_1

    .line 750
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_0

    .line 752
    :cond_1
    const-string v0, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onFillRequestSuccess(): no request log for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :goto_0
    const/16 v0, 0x38d

    if-nez v3, :cond_3

    .line 755
    if-eqz v6, :cond_2

    .line 756
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 758
    :cond_2
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 759
    monitor-exit v5

    return-void

    .line 762
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 763
    .local v7, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-eqz v7, :cond_4

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_4

    .line 764
    const-string v0, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " because field detection is disabled"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 766
    monitor-exit v5

    return-void

    .line 768
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 770
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v8, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 772
    const/4 v5, 0x0

    .line 773
    .local v5, "sessionFinishedState":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 774
    .local v14, "disableDuration":J
    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-lez v8, :cond_9

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v13

    .line 776
    .local v13, "flags":I
    and-int/lit8 v8, v13, 0x2

    if-eqz v8, :cond_5

    .line 777
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v10, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move/from16 v18, v10

    move-wide v10, v14

    move v0, v13

    .end local v13    # "flags":I
    .local v0, "flags":I
    move/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_1

    .line 780
    .end local v0    # "flags":I
    .restart local v13    # "flags":I
    :cond_5
    move v0, v13

    .end local v13    # "flags":I
    .restart local v0    # "flags":I
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v13, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide v10, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 784
    :goto_1
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 785
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 786
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_6

    .line 787
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Service disabled autofill for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", but session is kept for augmented autofill only"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "AutofillSession"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_6
    return-void

    .line 792
    :cond_7
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_8

    .line 793
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Service disabled autofill for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 794
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 795
    const-string v9, ": flags="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 796
    const-string v9, ", duration="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 797
    .local v8, "message":Ljava/lang/StringBuilder;
    invoke-static {v14, v15, v8}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 798
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AutofillSession"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    .end local v8    # "message":Ljava/lang/StringBuilder;
    :cond_8
    const/4 v5, 0x4

    move v8, v5

    goto :goto_2

    .line 774
    .end local v0    # "flags":I
    :cond_9
    move v8, v5

    .line 803
    .end local v5    # "sessionFinishedState":I
    .local v8, "sessionFinishedState":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 804
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_c

    :cond_b
    cmp-long v0, v14, v16

    if-lez v0, :cond_d

    .line 807
    :cond_c
    invoke-direct {v1, v8, v5}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 810
    :cond_d
    if-eqz v6, :cond_f

    .line 811
    nop

    .line 812
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 811
    const/16 v9, 0x38d

    invoke-virtual {v6, v9, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 813
    if-eqz v7, :cond_f

    .line 814
    const/16 v0, 0x4f7

    array-length v9, v7

    .line 816
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 814
    invoke-virtual {v6, v0, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 820
    :cond_f
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 821
    :try_start_1
    invoke-direct {v1, v3, v5, v4}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 822
    monitor-exit v9

    .line 823
    return-void

    .line 822
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 768
    .end local v6    # "requestLog":Landroid/metrics/LogMaker;
    .end local v7    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "sessionFinishedState":I
    .end local v14    # "disableDuration":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 834
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 835
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3373
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 3374
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 908
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 911
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 912
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call to Session#onSaveRequestFailure() rejected - session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " destroyed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    monitor-exit v1

    return-void

    .line 916
    :cond_0
    if-eqz v0, :cond_1

    .line 917
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v2

    .line 918
    .local v2, "targetSdk":I
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 919
    const/4 v0, 0x0

    .line 920
    const-string v3, "AutofillSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSaveRequestFailure(): not showing \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\' because service\'s targetting API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    .end local v2    # "targetSdk":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    const/16 v1, 0x396

    .line 926
    invoke-direct {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0xb

    .line 927
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 928
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_2

    .line 929
    const/16 v2, 0x624

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 931
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 933
    if-eqz v0, :cond_3

    .line 934
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 936
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 937
    return-void

    .line 924
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "servicePackageName"    # Ljava/lang/String;
    .param p2, "intentSender"    # Landroid/content/IntentSender;

    .line 882
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 883
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 885
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 886
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#onSaveRequestSuccess() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    monitor-exit v0

    return-void

    .line 890
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 891
    const/16 v0, 0x396

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 892
    if-nez p2, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 893
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 894
    if-eqz p2, :cond_3

    .line 895
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillSession"

    const-string v2, "Starting intent sender on save()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;)V

    .line 900
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 901
    return-void

    .line 890
    .end local v0    # "log":Landroid/metrics/LogMaker;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/autofill/RemoteFillService;

    .line 1000
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "removing session because service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 1002
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 124
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method removeSelfLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3354
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeSelfLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 3356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#removeSelfLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    return-void

    .line 3360
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3361
    const-string/jumbo v0, "removeSelfLocked() ignored, waiting for pending save ui"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    return-void

    .line 3365
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 3366
    .local v0, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 3367
    if-eqz v0, :cond_3

    .line 3368
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 3370
    :cond_3
    return-void
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1101
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    goto :goto_0

    .line 1109
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1106
    :catch_0
    move-exception v1

    .line 1107
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1109
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1110
    return-void

    .line 1109
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "presenter"    # Landroid/view/autofill/IAutofillWindowPresenter;

    .line 1054
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1055
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1056
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#requestShowFillUi() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    monitor-exit v0

    return-void

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1062
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1063
    .local v1, "view":Lcom/android/server/autofill/ViewState;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getVirtualBounds()Landroid/graphics/Rect;

    move-result-object v7

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/view/autofill/IAutoFillManagerClient;->requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    .end local v1    # "view":Lcom/android/server/autofill/ViewState;
    goto :goto_0

    .line 1065
    :catch_0
    move-exception v1

    .line 1066
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to show fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1069
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 1070
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Do not show full UI on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " as it is not the current view ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public save()V
    .locals 4

    .line 1022
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1023
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1024
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#save() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    monitor-exit v0

    return-void

    .line 1028
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1032
    return-void

    .line 1028
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .locals 9
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authenticationId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1140
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#setAuthenticationResultLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    return-void

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAuthenticationResultLocked("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): no responses"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1150
    return-void

    .line 1152
    :cond_1
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 1153
    .local v0, "requestId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 1154
    .local v2, "authenticatedResponse":Landroid/service/autofill/FillResponse;
    if-eqz v2, :cond_b

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 1160
    :cond_2
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v3

    .line 1163
    .local v3, "datasetIdx":I
    const v4, 0xffff

    if-eq v3, v4, :cond_3

    .line 1164
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1165
    .local v5, "dataset":Landroid/service/autofill/Dataset;
    if-nez v5, :cond_3

    .line 1166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no dataset with index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on fill response"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1168
    return-void

    .line 1172
    .end local v5    # "dataset":Landroid/service/autofill/Dataset;
    :cond_3
    const-string v5, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1173
    .local v5, "result":Landroid/os/Parcelable;
    const-string v6, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 1174
    .local v6, "newClientState":Landroid/os/Bundle;
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_4

    .line 1175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAuthenticationResultLocked(): result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", clientState="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", authenticationId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_4
    instance-of v7, v5, Landroid/service/autofill/FillResponse;

    if-eqz v7, :cond_5

    .line 1179
    const/16 v1, 0x390

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1180
    move-object v1, v5

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v2, v1, v6}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1181
    :cond_5
    instance-of v7, v5, Landroid/service/autofill/Dataset;

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    .line 1182
    if-eq v3, v4, :cond_8

    .line 1183
    const/16 v4, 0x466

    invoke-direct {p0, v0, v4}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1185
    if-eqz v6, :cond_7

    .line 1186
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_6

    const-string v4, "Updating client state from auth dataset"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_6
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1189
    :cond_7
    move-object v1, v5

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1190
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1191
    invoke-virtual {p0, v0, v3, v1, v8}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;Z)V

    .line 1192
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    goto :goto_0

    .line 1193
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid index ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") for authentication id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    const/16 v1, 0x467

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_0

    .line 1199
    :cond_9
    if-eqz v5, :cond_a

    .line 1200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service returned invalid auth type: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_a
    const/16 v1, 0x468

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1204
    invoke-direct {p0, v0, v8}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1206
    :goto_0
    return-void

    .line 1155
    .end local v3    # "datasetIdx":I
    .end local v5    # "result":Landroid/os/Parcelable;
    .end local v6    # "newClientState":Landroid/os/Bundle;
    :cond_b
    :goto_1
    const-string/jumbo v3, "no authenticated response"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1157
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 2644
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2645
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 2646
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 2647
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v3, "AutofillSession"

    if-nez v2, :cond_0

    .line 2648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutofillFailure(): no view for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    goto :goto_1

    .line 2651
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2652
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    .line 2653
    .local v4, "state":I
    or-int/lit16 v5, v4, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2654
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_1

    .line 2655
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "state":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2658
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .locals 2
    .param p1, "hasIt"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#setHasCallbackLocked() rejected - session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void

    .line 1215
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1216
    return-void
.end method

.method public showSaveLocked()Z
    .locals 30
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1631
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call to Session#showSaveLocked() rejected - session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    return v13

    .line 1636
    :cond_0
    const-string/jumbo v0, "showSaveLocked(%s)"

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v14

    .line 1637
    .local v14, "response":Landroid/service/autofill/FillResponse;
    if-nez v14, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    :goto_0
    move-object v15, v1

    .line 1649
    .local v15, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v11, 0x1

    if-nez v15, :cond_3

    .line 1650
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): no saveInfo from service"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    :cond_2
    return v11

    .line 1654
    :cond_3
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1656
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): service asked to delay save"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_4
    return v13

    .line 1660
    :cond_5
    invoke-direct {v12, v15}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 1663
    .local v10, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v1

    .line 1665
    .local v9, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v1

    .line 1667
    .local v8, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 1668
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    const/4 v1, 0x1

    .line 1669
    .local v1, "allRequiredAreNotEmpty":Z
    const/4 v2, 0x0

    .line 1672
    .local v2, "atLeastOneChanged":Z
    const/4 v3, 0x0

    .line 1673
    .local v3, "isUpdate":Z
    if-eqz v7, :cond_16

    .line 1674
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v7

    if-ge v4, v5, :cond_15

    .line 1675
    aget-object v5, v7, v4

    .line 1676
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_6

    .line 1677
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "null autofill id on "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "AutofillSession"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    move/from16 v18, v1

    move/from16 v20, v2

    goto/16 :goto_8

    .line 1680
    :cond_6
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1681
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 1682
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_7

    .line 1683
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "AutofillSession"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    const/4 v1, 0x0

    .line 1685
    move v13, v1

    goto/16 :goto_a

    .line 1688
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1689
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v18, v1

    goto :goto_4

    .line 1690
    :cond_9
    :goto_2
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1691
    .local v13, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_13

    .line 1692
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v17, :cond_a

    .line 1693
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v1

    .end local v1    # "allRequiredAreNotEmpty":Z
    .local v18, "allRequiredAreNotEmpty":Z
    const-string v1, "Value of required field "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " didn\'t change; using initial value ("

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") instead"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "AutofillSession"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1692
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v1    # "allRequiredAreNotEmpty":Z
    :cond_a
    move/from16 v18, v1

    .line 1696
    .end local v1    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :goto_3
    move-object v6, v13

    .line 1706
    .end local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    :goto_4
    invoke-direct {v12, v10, v5, v6}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1707
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_c

    .line 1708
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_b

    .line 1709
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "value of required field "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " failed sanitization"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "AutofillSession"

    invoke-static {v11, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_b
    const/4 v6, 0x0

    .line 1712
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v6, "allRequiredAreNotEmpty":Z
    move v13, v6

    goto/16 :goto_a

    .line 1714
    .end local v6    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 1715
    invoke-virtual {v9, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1718
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1719
    const/4 v11, 0x1

    .line 1720
    .local v11, "changed":Z
    if-nez v6, :cond_f

    .line 1722
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 1723
    .restart local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_e

    invoke-virtual {v13, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 1724
    sget-boolean v19, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v19, :cond_d

    .line 1725
    move-object/from16 v19, v0

    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v19, "viewState":Lcom/android/server/autofill/ViewState;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2    # "atLeastOneChanged":Z
    .local v20, "atLeastOneChanged":Z
    const-string v2, "id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is part of dataset but initial value didn\'t change: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1724
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .restart local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_d
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1728
    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "atLeastOneChanged":Z
    .restart local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "atLeastOneChanged":Z
    :goto_5
    const/4 v0, 0x0

    move v11, v0

    .end local v11    # "changed":Z
    .local v0, "changed":Z
    goto :goto_6

    .line 1723
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v11    # "changed":Z
    :cond_e
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1730
    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "atLeastOneChanged":Z
    .end local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "atLeastOneChanged":Z
    :goto_6
    goto :goto_7

    .line 1731
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .restart local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_f
    move-object/from16 v19, v0

    move/from16 v20, v2

    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "atLeastOneChanged":Z
    .restart local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "atLeastOneChanged":Z
    const/4 v3, 0x1

    .line 1733
    :goto_7
    if-eqz v11, :cond_11

    .line 1734
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_10

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found a change on required "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AutofillSession"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :cond_10
    const/4 v0, 0x1

    move v2, v0

    .end local v20    # "atLeastOneChanged":Z
    .local v0, "atLeastOneChanged":Z
    goto :goto_9

    .line 1733
    .end local v0    # "atLeastOneChanged":Z
    .restart local v20    # "atLeastOneChanged":Z
    :cond_11
    move/from16 v2, v20

    goto :goto_9

    .line 1718
    .end local v11    # "changed":Z
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_12
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 1674
    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v1, "allRequiredAreNotEmpty":Z
    :goto_8
    move/from16 v2, v20

    .end local v1    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :goto_9
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v18

    const/4 v11, 0x1

    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1698
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v1    # "allRequiredAreNotEmpty":Z
    .restart local v5    # "id":Landroid/view/autofill/AutofillId;
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    .restart local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    :cond_13
    move-object/from16 v19, v0

    move/from16 v18, v1

    move/from16 v20, v2

    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v1    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    .restart local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "atLeastOneChanged":Z
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_14

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty value for required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_14
    const/4 v1, 0x0

    .line 1702
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v1    # "allRequiredAreNotEmpty":Z
    move v13, v1

    move/from16 v2, v20

    goto :goto_a

    .line 1674
    .end local v5    # "id":Landroid/view/autofill/AutofillId;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .end local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .restart local v2    # "atLeastOneChanged":Z
    :cond_15
    move/from16 v18, v1

    move/from16 v20, v2

    .end local v1    # "allRequiredAreNotEmpty":Z
    .end local v2    # "atLeastOneChanged":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    .restart local v20    # "atLeastOneChanged":Z
    move/from16 v13, v18

    goto :goto_a

    .line 1673
    .end local v4    # "i":I
    .end local v18    # "allRequiredAreNotEmpty":Z
    .end local v20    # "atLeastOneChanged":Z
    .restart local v1    # "allRequiredAreNotEmpty":Z
    .restart local v2    # "atLeastOneChanged":Z
    :cond_16
    move/from16 v18, v1

    .end local v1    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    move/from16 v13, v18

    .line 1744
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v13, "allRequiredAreNotEmpty":Z
    :goto_a
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 1745
    .local v11, "optionalIds":[Landroid/view/autofill/AutofillId;
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_18

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allRequiredAreNotEmpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasOptional: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v11, :cond_17

    const/4 v1, 0x1

    goto :goto_b

    :cond_17
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :cond_18
    if-eqz v13, :cond_38

    .line 1755
    if-eqz v11, :cond_24

    if-eqz v2, :cond_19

    if-nez v3, :cond_24

    .line 1757
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, v11

    if-ge v0, v1, :cond_23

    .line 1758
    aget-object v1, v11, v0

    .line 1759
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1760
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 1761
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v4, :cond_1a

    .line 1762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no ViewState for optional "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_10

    .line 1765
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_20

    .line 1766
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 1767
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-direct {v12, v10, v1, v5}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 1768
    .restart local v6    # "value":Landroid/view/autofill/AutofillValue;
    if-nez v6, :cond_1c

    .line 1769
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_1b

    .line 1770
    move/from16 v18, v2

    .end local v2    # "atLeastOneChanged":Z
    .local v18, "atLeastOneChanged":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v3

    .end local v3    # "isUpdate":Z
    .local v19, "isUpdate":Z
    const-string/jumbo v3, "value of opt. field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed sanitization"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1769
    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_1b
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    goto/16 :goto_10

    .line 1775
    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_1c
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    invoke-virtual {v9, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1777
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v6, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1778
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1d

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v4

    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v20, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v4, "found a change on optional "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1778
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_1d
    move-object/from16 v20, v4

    .line 1782
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_d
    if-eqz v2, :cond_1e

    .line 1783
    const/4 v3, 0x1

    .end local v19    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    goto :goto_e

    .line 1782
    .end local v3    # "isUpdate":Z
    .restart local v19    # "isUpdate":Z
    :cond_1e
    move/from16 v3, v19

    .line 1785
    .end local v19    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    :goto_e
    const/4 v4, 0x1

    move/from16 v18, v4

    .end local v18    # "atLeastOneChanged":Z
    .local v4, "atLeastOneChanged":Z
    goto :goto_f

    .line 1777
    .end local v3    # "isUpdate":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    :cond_1f
    move-object/from16 v20, v4

    .line 1787
    .end local v2    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v3, v19

    .end local v19    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    :goto_f
    move/from16 v2, v18

    goto :goto_11

    .line 1789
    .end local v18    # "atLeastOneChanged":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v2, "atLeastOneChanged":Z
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_20
    move/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v4

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    invoke-direct {v12, v1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1790
    .local v2, "initialValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_21

    .line 1791
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no current value for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; initial value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_21
    if-eqz v2, :cond_22

    .line 1795
    invoke-virtual {v9, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v2, "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_22
    :goto_10
    move/from16 v2, v18

    move/from16 v3, v19

    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_23
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    goto :goto_12

    .line 1800
    .end local v0    # "i":I
    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :cond_24
    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "atLeastOneChanged":Z
    .end local v3    # "isUpdate":Z
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    :goto_12
    if-eqz v18, :cond_37

    .line 1801
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_25

    .line 1802
    const-string v0, "AutofillSession"

    const-string v1, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    :cond_25
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v6

    .line 1805
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_28

    .line 1806
    const/16 v0, 0x46d

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1809
    .local v1, "log":Landroid/metrics/LogMaker;
    :try_start_0
    invoke-virtual {v6, v12}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 1810
    .local v0, "isValid":Z
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_26

    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_26
    if-eqz v0, :cond_27

    .line 1812
    const/16 v2, 0xa

    goto :goto_13

    .line 1813
    :cond_27
    const/4 v2, 0x5

    .line 1811
    :goto_13
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    nop

    .line 1821
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1822
    if-nez v0, :cond_28

    .line 1823
    const-string v2, "AutofillSession"

    const-string/jumbo v3, "not showing save UI because fields failed validation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v2, 0x1

    return v2

    .line 1814
    .end local v0    # "isValid":Z
    :catch_0
    move-exception v0

    .line 1815
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1817
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1818
    const/4 v2, 0x1

    return v2

    .line 1830
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_28
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 1831
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_32

    .line 1832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 1833
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1834
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    nop

    .line 1835
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 1836
    .local v2, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_29

    .line 1837
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if saved fields match contents of dataset #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; savableIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    :cond_29
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_15
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 1841
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 1842
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v5

    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v5, v20

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 1843
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_2b

    .line 1844
    sget-boolean v20, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v20, :cond_2a

    .line 1845
    move-object/from16 v20, v6

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .local v20, "validator":Landroid/service/autofill/InternalValidator;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v7

    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .local v22, "requiredIds":[Landroid/view/autofill/AutofillId;
    const-string v7, "dataset has value for field that is null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillSession"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v2

    goto/16 :goto_17

    .line 1844
    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_2a
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    move-object/from16 v23, v2

    goto :goto_17

    .line 1849
    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_2b
    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillValue;

    .line 1850
    .local v6, "datasetValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 1851
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_2c

    .line 1852
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v23, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    const-string v2, "found a dataset change on id "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": from "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "AutofillSession"

    invoke-static {v7, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 1851
    .end local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    :cond_2c
    move-object/from16 v23, v2

    .line 1832
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "j":I
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :goto_16
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    goto/16 :goto_14

    .line 1857
    .restart local v1    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v3    # "j":I
    .restart local v4    # "id":Landroid/view/autofill/AutofillId;
    .restart local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_2d
    move-object/from16 v23, v2

    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no dataset changes for id "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "AutofillSession"

    invoke-static {v7, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "datasetValue":Landroid/view/autofill/AutofillValue;
    :cond_2e
    :goto_17
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v7, v22

    move-object/from16 v2, v23

    goto/16 :goto_15

    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_2f
    move-object/from16 v23, v2

    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    .line 1859
    .end local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v3    # "j":I
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_30

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring Save UI because all fields match contents of dataset #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AutofillSession"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_30
    const/16 v17, 0x1

    return v17

    .line 1832
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_31
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    const/16 v17, 0x1

    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    goto :goto_18

    .line 1831
    .end local v0    # "i":I
    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :cond_32
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move-object/from16 v22, v7

    const/16 v17, 0x1

    .line 1867
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :goto_18
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_33

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Good news, everyone! All checks passed, show save UI for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_33
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;

    invoke-static {v1, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v7

    .line 1876
    .local v7, "client":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 1880
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1881
    :try_start_1
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v23, v0

    .line 1882
    .local v23, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v24, v0

    .line 1883
    .local v24, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1884
    if-eqz v23, :cond_36

    if-nez v24, :cond_34

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move/from16 v15, v17

    const/4 v1, 0x0

    move-object v14, v7

    move-object/from16 v17, v11

    goto/16 :goto_1a

    .line 1888
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 1889
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v5, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 1888
    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v16, v5

    move-object v5, v15

    move-object/from16 v25, v6

    move-object/from16 v6, p0

    move-object/from16 v26, v14

    move-object v14, v7

    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .local v26, "response":Landroid/service/autofill/FillResponse;
    move-object v7, v0

    move-object/from16 v27, v8

    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v27, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    move-object/from16 v8, p0

    move-object/from16 v28, v9

    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .local v28, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    move-object/from16 v9, v25

    move-object/from16 v25, v10

    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .local v25, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    move/from16 v10, v19

    move-object/from16 v29, v15

    move/from16 v15, v17

    move-object/from16 v17, v11

    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v17, "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v29, "saveInfo":Landroid/service/autofill/SaveInfo;
    move/from16 v11, v16

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showSaveUi(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/service/autofill/SaveInfo;Landroid/service/autofill/ValueFinder;Landroid/content/ComponentName;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Lcom/android/server/autofill/ui/PendingUi;ZZ)V

    .line 1891
    if-eqz v14, :cond_35

    .line 1893
    :try_start_2
    iget v0, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v14, v0, v15}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1896
    goto :goto_19

    .line 1894
    :catch_1
    move-exception v0

    .line 1895
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error notifying client to set save UI state to shown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_19
    iput-boolean v15, v12, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1899
    const/4 v1, 0x0

    return v1

    .line 1884
    .end local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .end local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_36
    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move/from16 v15, v17

    const/4 v1, 0x0

    move-object v14, v7

    move-object/from16 v17, v11

    .line 1885
    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    .restart local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_1a
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "showSaveLocked(): no service label or icon"

    const/4 v2, 0x0

    invoke-direct {v12, v2, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1886
    return v15

    .line 1883
    .end local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v23    # "serviceLabel":Ljava/lang/CharSequence;
    .end local v24    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .end local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    move-object v14, v7

    .end local v7    # "client":Landroid/view/autofill/IAutoFillManagerClient;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v14, "client":Landroid/view/autofill/IAutoFillManagerClient;
    .restart local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    .restart local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_1b
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1b

    .line 1800
    .end local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .end local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .local v14, "response":Landroid/service/autofill/FillResponse;
    .restart local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_37
    move-object/from16 v22, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    const/4 v15, 0x1

    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .end local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    .restart local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    move/from16 v2, v18

    move/from16 v3, v19

    goto :goto_1c

    .line 1749
    .end local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .end local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v26    # "response":Landroid/service/autofill/FillResponse;
    .end local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .local v2, "atLeastOneChanged":Z
    .local v3, "isUpdate":Z
    .restart local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v14    # "response":Landroid/service/autofill/FillResponse;
    .restart local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :cond_38
    move-object/from16 v22, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v25, v10

    move-object/from16 v17, v11

    move-object/from16 v26, v14

    move-object/from16 v29, v15

    const/4 v15, 0x1

    .line 1903
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .end local v10    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .end local v11    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .end local v14    # "response":Landroid/service/autofill/FillResponse;
    .end local v15    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .restart local v17    # "optionalIds":[Landroid/view/autofill/AutofillId;
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v25    # "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    .restart local v26    # "response":Landroid/service/autofill/FillResponse;
    .restart local v27    # "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .restart local v28    # "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v29    # "saveInfo":Landroid/service/autofill/SaveInfo;
    :goto_1c
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_39

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSaveLocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): with no changes, comes no responsibilities.allRequiredAreNotNull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", atLeastOneChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_39
    return v15
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 4
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 1115
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1116
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1117
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#startIntentSender() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    monitor-exit v0

    return-void

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1122
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$dldcS_opIdRI25w0DM6rSIaHIoc;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1126
    return-void

    .line 1122
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "newActivity"    # Landroid/os/IBinder;
    .param p2, "newClient"    # Landroid/os/IBinder;

    .line 686
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 687
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 688
    const-string v1, "AutofillSession"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Call to Session#switchActivity() rejected - session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " destroyed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    monitor-exit v0

    return-void

    .line 692
    :cond_0
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 693
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 696
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateLocked(Landroid/view/autofill/AutofillId;Landroid/graphics/Rect;Landroid/view/autofill/AutofillValue;II)V
    .locals 9
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualBounds"    # Landroid/graphics/Rect;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;
    .param p4, "action"    # I
    .param p5, "flags"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2272
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call to Session#updateLocked() rejected - session: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " destroyed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    return-void

    .line 2277
    :cond_0
    iget v0, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v0}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 2278
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v2, "updateLocked("

    if-eqz v0, :cond_1

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", action="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2279
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2284
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez v0, :cond_8

    .line 2285
    if-eq p4, v5, :cond_4

    if-eq p4, v4, :cond_4

    if-ne p4, v3, :cond_2

    goto :goto_0

    .line 2301
    :cond_2
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    const-string v2, "Ignoring specific action when viewState=null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    :cond_3
    return-void

    .line 2287
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating viewState for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v6

    .line 2289
    .local v6, "isIgnored":Z
    new-instance v7, Lcom/android/server/autofill/ViewState;

    .line 2290
    if-eqz v6, :cond_6

    const/16 v8, 0x80

    goto :goto_1

    :cond_6
    move v8, v5

    :goto_1
    invoke-direct {v7, p1, p0, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v7

    .line 2291
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    if-eqz v6, :cond_8

    .line 2297
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(): ignoring view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :cond_7
    return-void

    .line 2306
    .end local v6    # "isIgnored":Z
    :cond_8
    if-eq p4, v5, :cond_27

    if-eq p4, v3, :cond_20

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-eq p4, v3, :cond_1e

    if-eq p4, v4, :cond_9

    .line 2455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(): unknown action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2314
    :cond_9
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v3, :cond_13

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_13

    .line 2316
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v2, :cond_a

    move-object v2, v6

    goto :goto_2

    .line 2317
    :cond_a
    invoke-virtual {v2}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_2
    nop

    .line 2318
    .local v2, "currentUrl":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_b

    .line 2320
    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "URL bar value changed, but current value is null"

    invoke-direct {p0, v6, v3, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2321
    return-void

    .line 2323
    :cond_b
    if-eqz p3, :cond_12

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_3

    .line 2328
    :cond_c
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, "newUrl":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2330
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_d

    const-string v4, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_d
    return-void

    .line 2333
    :cond_e
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v4, :cond_10

    .line 2337
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_f

    .line 2338
    const-string v4, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    :cond_f
    return-void

    .line 2343
    :cond_10
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_11

    const-string v4, "Finishing session because URL bar changed"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_11
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2345
    return-void

    .line 2325
    .end local v3    # "newUrl":Ljava/lang/String;
    :cond_12
    :goto_3
    new-array v1, v5, [Ljava/lang/Object;

    aput-object p3, v1, v3

    const-string v3, "URL bar value changed to null or non-text: %s"

    invoke-direct {p0, v6, v3, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2326
    return-void

    .line 2348
    .end local v2    # "currentUrl":Ljava/lang/String;
    :cond_13
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2349
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2350
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 2351
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2352
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 2353
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 2354
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 2355
    .local v3, "length":I
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_15

    .line 2356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): resetting value that was "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars long"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_15
    const/16 v2, 0x464

    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v5, 0x465

    .line 2360
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v5, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2361
    .local v2, "log":Landroid/metrics/LogMaker;
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2365
    .end local v2    # "log":Landroid/metrics/LogMaker;
    .end local v3    # "length":I
    :cond_16
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2369
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2370
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    const/16 v3, 0x8

    if-eqz v2, :cond_1a

    .line 2371
    invoke-virtual {v2, p3}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 2372
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_17

    .line 2373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ignoring autofilled change on id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_17
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2376
    return-void

    .line 2379
    :cond_18
    iget-object v5, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v7, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v7}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2380
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v5

    and-int/2addr v5, v4

    if-eqz v5, :cond_1a

    .line 2382
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_19

    .line 2383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "field changed after autofill on id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_19
    invoke-virtual {v0, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2386
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 2387
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p5}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2393
    .end local v1    # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_1a
    invoke-virtual {v0, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2397
    if-eqz p3, :cond_1d

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_5

    .line 2400
    :cond_1b
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2403
    .local v1, "text":Ljava/lang/CharSequence;
    if-nez v1, :cond_1c

    goto :goto_4

    :cond_1c
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_4
    move-object v1, v6

    .local v1, "filterText":Ljava/lang/String;
    goto :goto_6

    .line 2398
    .end local v1    # "filterText":Ljava/lang/String;
    :cond_1d
    :goto_5
    const/4 v1, 0x0

    .line 2405
    .restart local v1    # "filterText":Ljava/lang/String;
    :goto_6
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2406
    .end local v1    # "filterText":Ljava/lang/String;
    .end local v2    # "filledValue":Landroid/view/autofill/AutofillValue;
    goto/16 :goto_7

    .line 2447
    :cond_1e
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 2448
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exiting view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    :cond_1f
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2450
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2451
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    goto/16 :goto_7

    .line 2409
    :cond_20
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_21

    if-eqz p2, :cond_21

    .line 2410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entered on virtual child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    :cond_21
    iget-object v3, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2415
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2417
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v3, :cond_23

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_23

    .line 2418
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_22
    return-void

    .line 2422
    :cond_23
    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_25

    .line 2423
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2427
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): augmented-autofillable"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    :cond_24
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 2431
    return-void

    .line 2434
    :cond_25
    invoke-direct {p0, p1, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)V

    .line 2437
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2438
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2439
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2440
    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2444
    :cond_26
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2445
    goto :goto_7

    .line 2309
    :cond_27
    iget-object v1, v0, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2310
    invoke-virtual {v0, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2311
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2312
    nop

    .line 2457
    :cond_28
    :goto_7
    return-void
.end method
