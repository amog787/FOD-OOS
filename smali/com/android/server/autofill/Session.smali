.class final Lcom/android/server/autofill/Session;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.implements Lcom/android/server/autofill/ViewState$Listener;
.implements Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
.implements Landroid/service/autofill/ValueFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
    }
.end annotation


# static fields
.field static final AUGMENTED_AUTOFILL_REQUEST_ID:I = 0x1

.field private static final EXTRA_REQUEST_ID:Ljava/lang/String; = "android.service.autofill.extra.REQUEST_ID"

.field private static final TAG:Ljava/lang/String; = "AutofillSession"

.field private static sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final id:I

.field private mActivityToken:Landroid/os/IBinder;

.field private final mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field private mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

.field private mAugmentedAutofillableIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field

.field private mAugmentedRequestsLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/view/autofill/IAutoFillManagerClient;

.field private mClientState:Landroid/os/Bundle;

.field private mClientVulture:Landroid/os/IBinder$DeathRecipient;

.field private final mCompatMode:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentViewId:Landroid/view/autofill/AutofillId;

.field private mDestroyed:Z

.field private mExpiredResponse:Z

.field public final mFlags:I

.field private mForAugmentedAutofillOnly:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasCallback:Z

.field private final mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

.field private mIsSaving:Z

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

.field private final mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

.field private final mRequestLogs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/metrics/LogMaker;",
            ">;"
        }
    .end annotation
.end field

.field private mResponses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveOnAllViewsInvisible:Z

.field private mSelectedDatasetIds:Ljava/util/ArrayList;
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

.field private mUiShownTime:J

.field private mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

.field private final mViewStates:Landroid/util/ArrayMap;
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

.field public final taskId:I

.field public final uid:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/ui/AutoFillUI;Landroid/content/Context;Landroid/os/Handler;ILjava/lang/Object;IIILandroid/os/IBinder;Landroid/os/IBinder;ZLandroid/util/LocalLog;Landroid/util/LocalLog;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZILcom/android/server/inputmethod/InputMethodManagerInternal;)V
    .locals 17
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
    .param p21, "inputMethodManagerInternal"    # Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 834
    move-object/from16 v6, p0

    move/from16 v7, p7

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    .line 275
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    .line 319
    new-instance v0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    const/4 v2, 0x0

    invoke-direct {v0, v6, v2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$1;)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 835
    if-gez v7, :cond_0

    .line 836
    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "Non-positive sessionId: %s"

    invoke-direct {v6, v2, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    :cond_0
    iput v7, v6, Lcom/android/server/autofill/Session;->id:I

    .line 839
    move/from16 v8, p20

    iput v8, v6, Lcom/android/server/autofill/Session;->mFlags:I

    .line 840
    move/from16 v15, p5

    iput v15, v6, Lcom/android/server/autofill/Session;->userId:I

    .line 841
    move/from16 v14, p8

    iput v14, v6, Lcom/android/server/autofill/Session;->taskId:I

    .line 842
    move/from16 v13, p9

    iput v13, v6, Lcom/android/server/autofill/Session;->uid:I

    .line 843
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/autofill/Session;->mStartTime:J

    .line 844
    move-object/from16 v12, p1

    iput-object v12, v6, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 845
    move-object/from16 v11, p6

    iput-object v11, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    .line 846
    move-object/from16 v10, p2

    iput-object v10, v6, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    .line 847
    move-object/from16 v9, p4

    iput-object v9, v6, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    .line 848
    if-nez p15, :cond_1

    goto :goto_0

    .line 849
    :cond_1
    new-instance v16, Lcom/android/server/autofill/RemoteFillService;

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, p15

    move/from16 v3, p5

    move-object/from16 v4, p0

    move/from16 v5, p18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V

    move-object/from16 v2, v16

    :goto_0
    iput-object v2, v6, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    .line 851
    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 852
    move/from16 v1, p12

    iput-boolean v1, v6, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 853
    move-object/from16 v2, p13

    iput-object v2, v6, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    .line 854
    move-object/from16 v3, p14

    iput-object v3, v6, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    .line 855
    move-object/from16 v4, p16

    iput-object v4, v6, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 856
    move/from16 v5, p17

    iput-boolean v5, v6, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 857
    move/from16 v0, p19

    iput-boolean v0, v6, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 858
    move-object/from16 v0, p11

    invoke-direct {v6, v0}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 860
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v1, v6, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    new-instance v2, Lcom/android/server/autofill/Session$1;

    invoke-direct {v2, v6}, Lcom/android/server/autofill/Session$1;-><init>(Lcom/android/server/autofill/Session;)V

    move-object v9, v0

    move-object/from16 v10, p21

    move/from16 v11, p5

    move-object/from16 v12, p16

    move-object/from16 v13, p4

    move-object v14, v1

    move-object v15, v2

    invoke-direct/range {v9 .. v15}, Lcom/android/server/autofill/AutofillInlineSessionController;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    iput-object v0, v6, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 874
    iget-object v0, v6, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x38a

    invoke-direct {v6, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x5ac

    .line 875
    invoke-static/range {p20 .. p20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 874
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 876
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 135
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/Session;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/service/autofill/FillContext;
    .param p2, "x2"    # I

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->fillContextWithAllowedValuesLocked(Landroid/service/autofill/FillContext;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Z

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/view/autofill/AutofillId;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiShown(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/view/autofill/AutofillId;

    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/autofill/Session;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Ljava/lang/Exception;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/Object;

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/Session;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/Session;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/Session;

    .line 135
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/Session;
    .param p1, "x1"    # Landroid/app/assist/AssistStructure$ViewNode;

    .line 135
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    return-object p1
.end method

.method private static actionAsString(I)Ljava/lang/String;
    .locals 2
    .param p0, "action"    # I

    .line 4070
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 4082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4080
    :cond_0
    const-string v0, "RESPONSE_EXPIRED"

    return-object v0

    .line 4078
    :cond_1
    const-string v0, "VALUE_CHANGED"

    return-object v0

    .line 4076
    :cond_2
    const-string v0, "VIEW_EXITED"

    return-object v0

    .line 4074
    :cond_3
    const-string v0, "VIEW_ENTERED"

    return-object v0

    .line 4072
    :cond_4
    const-string v0, "START_SESSION"

    return-object v0
.end method

.method private addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "tag"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .line 4047
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    .line 4048
    .local v0, "requestLog":Landroid/metrics/LogMaker;
    if-nez v0, :cond_0

    .line 4049
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

    .line 4051
    return-void

    .line 4053
    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 4054
    return-void
.end method

.method private cancelAugmentedAutofillLocked()V
    .locals 4

    .line 3412
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3413
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v0

    .line 3414
    .local v0, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_0

    .line 3415
    const-string v2, "cancelAugmentedAutofillLocked(): no service for user"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    return-void

    .line 3418
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

    .line 3419
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    .line 3420
    return-void
.end method

.method private cancelCurrentRequestLocked()V
    .locals 5

    .line 685
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 687
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 686
    const-string v2, "cancelCurrentRequestLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 688
    return-void

    .line 690
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->cancelCurrentRequest()I

    move-result v0

    .line 693
    .local v0, "canceledRequest":I
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 694
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 697
    .local v1, "numContexts":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_3

    .line 702
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 704
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelCurrentRequest(): id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_1
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 706
    goto :goto_1

    .line 697
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 710
    .end local v1    # "numContexts":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void
.end method

.method private static containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 2934
    const/4 v0, -0x1

    .line 2935
    .local v0, "prevIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-char v5, v1, v4

    .line 2936
    .local v5, "ch":C
    add-int/lit8 v6, v0, 0x1

    invoke-static {p0, v5, v6}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v6

    .line 2937
    .local v6, "index":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 2938
    return v3

    .line 2940
    :cond_0
    move v0, v6

    .line 2935
    .end local v5    # "ch":C
    .end local v6    # "index":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2942
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3595
    .local v0, "fillInIntent":Landroid/content/Intent;
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v1

    .line 3597
    .local v1, "context":Landroid/service/autofill/FillContext;
    if-nez v1, :cond_0

    .line 3598
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3599
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    aput-object v4, v2, v3

    .line 3598
    const/4 v3, 0x0

    const-string v4, "createAuthFillInIntentLocked(): no FillContext. requestId=%d; mContexts=%s"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3600
    return-object v3

    .line 3602
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    const-string v3, "android.view.autofill.extra.ASSIST_STRUCTURE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3603
    const-string v2, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3604
    return-object v0
.end method

.method private createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;
    .locals 3
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "state"    # I
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 3533
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 3534
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_0

    .line 3535
    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_0

    .line 3537
    :cond_0
    new-instance v1, Lcom/android/server/autofill/ViewState;

    invoke-direct {v1, p1, p0, p2}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v0, v1

    .line 3538
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_1

    .line 3539
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

    .line 3541
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 3542
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3544
    :goto_0
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 3545
    invoke-virtual {v0, p3}, Lcom/android/server/autofill/ViewState;->setAutofilledValue(Landroid/view/autofill/AutofillValue;)V

    .line 3547
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

    .line 2258
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2260
    :cond_0
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    .line 2261
    .local v1, "sanitizerKeys":[Landroid/service/autofill/InternalSanitizer;
    if-nez v1, :cond_1

    return-object v0

    .line 2263
    :cond_1
    array-length v0, v1

    .line 2264
    .local v0, "size":I
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2265
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

    .line 2266
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object v3

    .line 2267
    .local v3, "sanitizerValues":[[Landroid/view/autofill/AutofillId;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 2268
    aget-object v6, v1, v5

    .line 2269
    .local v6, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    aget-object v7, v3, v5

    .line 2270
    .local v7, "ids":[Landroid/view/autofill/AutofillId;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_3

    .line 2271
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

    .line 2272
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2271
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :cond_3
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    .line 2275
    .local v10, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    .end local v10    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2267
    .end local v6    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    .end local v7    # "ids":[Landroid/view/autofill/AutofillId;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2278
    .end local v5    # "i":I
    :cond_5
    return-object v2
.end method

.method private doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1388
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1390
    monitor-exit v0

    .line 1393
    goto :goto_0

    .line 1390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "intentSender":Landroid/content/IntentSender;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1391
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "intentSender":Landroid/content/IntentSender;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1394
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

    .line 3773
    invoke-static {p1, p3}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v0

    .line 3774
    .local v0, "value":I
    if-eqz v0, :cond_0

    .line 3775
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x3d

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3777
    :cond_0
    return-void
.end method

.method private static dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "log"    # Landroid/metrics/LogMaker;

    .line 3730
    const-string v0, "CAT="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getCategory()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3731
    const-string v0, ", TYPE="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3732
    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    .line 3733
    .local v0, "type":I
    const/4 v1, 0x2

    const-string v2, "UNSUPPORTED"

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 3737
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3735
    :cond_0
    const-string v1, "FAILURE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3734
    :cond_1
    const-string v1, "SUCCESS"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 3736
    :cond_2
    const-string v1, "CLOSE"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3739
    :goto_0
    const/16 v1, 0x28

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x29

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3740
    const-string v4, ", PKG="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/metrics/LogMaker;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3741
    const-string v4, ", SERVICE="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x38c

    .line 3742
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3741
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3743
    const-string v4, ", ORDINAL="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v4, 0x5ae

    .line 3744
    invoke-virtual {p1, v4}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object v4

    .line 3743
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3745
    const/16 v4, 0x5ac

    const-string v5, "FLAGS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3746
    const/16 v4, 0x38d

    const-string v5, "NUM_DATASETS"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3747
    const/16 v4, 0x479

    const-string v5, "UI_LATENCY"

    invoke-static {p0, p1, v5, v4}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3748
    const/16 v4, 0x5ad

    .line 3749
    invoke-static {p1, v4}, Lcom/android/server/autofill/Helper;->getNumericValue(Landroid/metrics/LogMaker;I)I

    move-result v4

    .line 3750
    .local v4, "authStatus":I
    if-eqz v4, :cond_4

    .line 3751
    const-string v5, ", AUTH_STATUS="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3752
    const/16 v5, 0x390

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    .line 3761
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3758
    :pswitch_0
    const-string v2, "INVALID_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3760
    :pswitch_1
    const-string v2, "INVALID_DATASET_AUTHENTICATION"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3756
    :pswitch_2
    const-string v2, "DATASET_AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 3754
    :cond_3
    const-string v2, "AUTHENTICATED"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3763
    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 3765
    :cond_4
    const/16 v1, 0x4f7

    const-string v2, "FC_IDS"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3767
    const/16 v1, 0x586

    const-string v2, "COMPAT_MODE"

    invoke-static {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->dumpNumericValue(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;Ljava/lang/String;I)V

    .line 3769
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

    .line 643
    nop

    .line 644
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v0

    .line 646
    .local v0, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 647
    .local v1, "numViewState":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 648
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 650
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    aget-object v4, v0, v2

    .line 651
    .local v4, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v4, :cond_0

    .line 652
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    .line 653
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

    .line 659
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 660
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 661
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    new-instance v7, Landroid/app/assist/AssistStructure$AutofillOverlay;

    invoke-direct {v7}, Landroid/app/assist/AssistStructure$AutofillOverlay;-><init>()V

    .line 664
    .local v7, "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    if-eqz v6, :cond_1

    invoke-virtual {v6, v5}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 665
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 668
    :cond_1
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v8, :cond_2

    .line 670
    iget-object v9, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v8

    iput-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    .line 672
    iget-boolean v8, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->focused:Z

    if-eqz v8, :cond_2

    and-int/lit8 v8, p2, 0x1

    if-eqz v8, :cond_2

    .line 673
    iput-object v5, v7, Landroid/app/assist/AssistStructure$AutofillOverlay;->value:Landroid/view/autofill/AutofillValue;

    .line 676
    :cond_2
    invoke-virtual {v4, v7}, Landroid/app/assist/AssistStructure$ViewNode;->setAutofillOverlay(Landroid/app/assist/AssistStructure$AutofillOverlay;)V

    .line 647
    .end local v3    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v7    # "overlay":Landroid/app/assist/AssistStructure$AutofillOverlay;
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 678
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 5
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 618
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 619
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    const-string v1, "AutofillSession"

    if-nez v0, :cond_1

    .line 620
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

    .line 621
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 623
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 624
    .local v2, "value":Landroid/view/autofill/AutofillValue;
    if-nez v2, :cond_3

    .line 625
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

    .line 626
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 628
    :cond_3
    return-object v2
.end method

.method private findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;
    .locals 6
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 591
    .local v0, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    return-object v1

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v1

    .line 598
    .local v1, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v1, :cond_3

    .line 599
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1

    .line 600
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

    .line 603
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 604
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    .line 605
    .local v3, "previousSession":Lcom/android/server/autofill/Session;
    nop

    .line 606
    invoke-direct {v3, p1}, Lcom/android/server/autofill/Session;->findValueFromThisSessionOnlyLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 607
    .local v4, "previousValue":Landroid/view/autofill/AutofillValue;
    if-eqz v4, :cond_2

    .line 608
    invoke-direct {v3}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {p0, v5, p1, v4}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v5

    return-object v5

    .line 603
    .end local v3    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v4    # "previousValue":Landroid/view/autofill/AutofillValue;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 613
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method private getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;
    .locals 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2352
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2354
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2355
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2358
    .local v2, "context":Landroid/service/autofill/FillContext;
    if-nez v2, :cond_0

    .line 2359
    goto :goto_1

    .line 2362
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2363
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2364
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillOptions()[Ljava/lang/CharSequence;

    move-result-object v4

    return-object v4

    .line 2354
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2367
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;
    .locals 5
    .param p1, "requestId"    # I

    .line 1167
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1168
    return-object v1

    .line 1171
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1172
    .local v0, "numContexts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1173
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 1178
    .local v3, "context":Landroid/service/autofill/FillContext;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getRequestId()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 1180
    return-object v3

    .line 1172
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1184
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;
    .locals 4

    .line 542
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 543
    .local v0, "numViewState":I
    new-array v1, v0, [Landroid/view/autofill/AutofillId;

    .line 544
    .local v1, "ids":[Landroid/view/autofill/AutofillId;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 545
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    iget-object v3, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v3, v1, v2

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 548
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private getLastResponseIndexLocked()I
    .locals 5

    .line 4013
    const/4 v0, -0x1

    .line 4014
    .local v0, "lastResponseIdx":I
    const/4 v1, -0x1

    .line 4015
    .local v1, "lastResponseId":I
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    .line 4016
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4017
    .local v2, "responseCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 4018
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-le v4, v1, :cond_0

    .line 4019
    move v0, v3

    .line 4020
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 4017
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4024
    .end local v2    # "responseCount":I
    .end local v3    # "i":I
    :cond_1
    return v0
.end method

.method private getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;
    .locals 7
    .param p1, "logPrefixFmt"    # Ljava/lang/String;

    .line 1562
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1563
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

    .line 1564
    :cond_0
    move-object v0, v1

    :goto_0
    nop

    .line 1565
    .local v0, "logPrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    const-string v3, "AutofillSession"

    if-nez v2, :cond_2

    .line 1566
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no contexts"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_1
    return-object v1

    .line 1569
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_4

    .line 1572
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no responses on session"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_3
    return-object v1

    .line 1578
    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getLastResponseIndexLocked()I

    move-result v2

    .line 1579
    .local v2, "lastResponseIdx":I
    const-string v4, ", mViewStates="

    if-gez v2, :cond_6

    .line 1580
    if-eqz v0, :cond_5

    .line 1581
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

    .line 1584
    :cond_5
    return-object v1

    .line 1587
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/FillResponse;

    .line 1588
    .local v1, "response":Landroid/service/autofill/FillResponse;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_7

    if-eqz v0, :cond_7

    .line 1589
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

    .line 1592
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

    .line 2286
    .local p1, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    if-eqz p1, :cond_5

    if-nez p3, :cond_0

    goto :goto_1

    .line 2288
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2289
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2290
    .local v1, "sanitized":Landroid/view/autofill/AutofillValue;
    :goto_0
    if-nez v1, :cond_4

    .line 2291
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/InternalSanitizer;

    .line 2292
    .local v2, "sanitizer":Landroid/service/autofill/InternalSanitizer;
    if-nez v2, :cond_2

    .line 2293
    return-object p3

    .line 2296
    :cond_2
    invoke-virtual {v2, p3}, Landroid/service/autofill/InternalSanitizer;->sanitize(Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2297
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_3

    .line 2298
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

    .line 2300
    :cond_3
    if-eqz v0, :cond_4

    .line 2301
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 2304
    .end local v2    # "sanitizer":Landroid/service/autofill/InternalSanitizer;
    :cond_4
    return-object v1

    .line 2286
    .end local v0    # "state":Lcom/android/server/autofill/ViewState;
    .end local v1    # "sanitized":Landroid/view/autofill/AutofillValue;
    :cond_5
    :goto_1
    return-object p3
.end method

.method private getSaveInfoLocked()Landroid/service/autofill/SaveInfo;
    .locals 2

    .line 1598
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1599
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

    .line 3833
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3834
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->setCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3835
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    monitor-exit v0

    return-object v1

    .line 3836
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

    .line 2321
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2322
    .local v0, "numContexts":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 2323
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillContext;

    .line 2326
    .local v2, "context":Landroid/service/autofill/FillContext;
    if-nez v2, :cond_0

    .line 2327
    goto :goto_1

    .line 2330
    :cond_0
    invoke-virtual {v2}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/server/autofill/Helper;->findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    .line 2332
    .local v3, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-eqz v3, :cond_2

    .line 2333
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillValue()Landroid/view/autofill/AutofillValue;

    move-result-object v4

    .line 2334
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_1

    .line 2335
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

    .line 2338
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2339
    return-object v4

    .line 2322
    .end local v2    # "context":Landroid/service/autofill/FillContext;
    .end local v3    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2343
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleLogContextCommitted()V
    .locals 6

    .line 1618
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1619
    :try_start_0
    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1620
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    if-nez v1, :cond_0

    .line 1623
    const-string v0, "AutofillSession"

    const-string v2, "handleLogContextCommitted(): last response is null"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v0

    .line 1630
    .local v0, "genericUserData":Landroid/service/autofill/UserData;
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v2

    .line 1632
    .local v2, "packageUserData":Landroid/service/autofill/UserData;
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 1633
    const/4 v3, 0x0

    .local v3, "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1634
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 1635
    new-instance v3, Landroid/service/autofill/CompositeUserData;

    invoke-direct {v3, v0, v2}, Landroid/service/autofill/CompositeUserData;-><init>(Landroid/service/autofill/UserData;Landroid/service/autofill/UserData;)V

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1636
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_2
    if-eqz v2, :cond_3

    .line 1637
    move-object v3, v2

    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    goto :goto_0

    .line 1639
    .end local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :cond_3
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUserData()Landroid/service/autofill/UserData;

    move-result-object v3

    .line 1642
    .restart local v3    # "userData":Landroid/service/autofill/FieldClassificationUserData;
    :goto_0
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getFieldClassificationStrategy()Lcom/android/server/autofill/FieldClassificationStrategy;

    move-result-object v4

    .line 1645
    .local v4, "fcStrategy":Lcom/android/server/autofill/FieldClassificationStrategy;
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1646
    invoke-direct {p0, v4, v3}, Lcom/android/server/autofill/Session;->logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V

    goto :goto_1

    .line 1648
    :cond_4
    const/4 v5, 0x0

    invoke-direct {p0, v5, v5}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1650
    :goto_1
    return-void

    .line 1620
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

    .line 2800
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v0

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 2802
    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2803
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 2805
    :cond_0
    return-void
.end method

.method private isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2813
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 2814
    .local v0, "response":Landroid/service/autofill/FillResponse;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    .line 2816
    :cond_0
    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isInlineSuggestionsEnabledByAutofillProviderLocked()Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isInlineSuggestionsEnabled()Z

    move-result v0

    return v0
.end method

.method private static isPinnedDataset(Landroid/service/autofill/Dataset;)Z
    .locals 4
    .param p0, "dataset"    # Landroid/service/autofill/Dataset;

    .line 1485
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1486
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1487
    .local v0, "numOfFields":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1488
    invoke-virtual {p0, v1}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v2

    .line 1489
    .local v2, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1490
    const/4 v3, 0x1

    return v3

    .line 1487
    .end local v2    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1494
    .end local v0    # "numOfFields":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSaveUiPendingLocked()Z
    .locals 2

    .line 4004
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

.method private isViewFocusedLocked(I)Z
    .locals 1
    .param p1, "flags"    # I

    .line 721
    and-int/lit8 v0, p1, 0x10

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$Fs9zdJwELk-9rAM3RiY6AyBKswI(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->doStartIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$LYgiVF7QUn4954p-wNYTeWDnGkw(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

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

.method static synthetic lambda$triggerAugmentedAutofillLocked$8(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V
    .locals 0
    .param p0, "remoteService"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 3391
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onDestroyAutofillWindowsRequest()V

    return-void
.end method

.method public static synthetic lambda$v6ZVyksJuHdWgJ1F8aoa_1LJWPo(Lcom/android/server/autofill/Session;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/autofill/Session;->handleLogContextCommitted()V

    return-void
.end method

.method private logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "augmentedRemoteServiceName"    # Landroid/content/ComponentName;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "isWhitelisted"    # Z
    .param p5, "isInline"    # Ljava/lang/Boolean;

    .line 3400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aug:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3402
    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " i="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3407
    .local v0, "historyItem":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getMaster()Lcom/android/server/infra/AbstractMasterSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->logRequestLocked(Ljava/lang/String;)V

    .line 3408
    return-void
.end method

.method private logAuthenticationStatusLocked(II)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "status"    # I

    .line 4041
    nop

    .line 4042
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 4041
    const/16 v1, 0x5ad

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 4043
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

    .line 1654
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1655
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/Session;->logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1656
    monitor-exit v0

    .line 1657
    return-void

    .line 1656
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logContextCommittedLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 36
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

    .line 1662
    .local p1, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local p2, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    move-object/from16 v0, p0

    const-string/jumbo v1, "logContextCommited(%s)"

    invoke-direct {v0, v1}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v1

    .line 1663
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    if-nez v1, :cond_0

    return-void

    .line 1665
    :cond_0
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v2

    .line 1666
    .local v2, "flags":I
    and-int/lit8 v3, v2, 0x1

    const-string v4, "AutofillSession"

    if-nez v3, :cond_2

    .line 1667
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

    .line 1668
    :cond_1
    return-void

    .line 1671
    :cond_2
    const/4 v3, 0x0

    .line 1672
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1673
    .local v5, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v6, 0x0

    .line 1674
    .local v6, "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1676
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 1677
    .local v8, "hasAtLeastOneDataset":Z
    iget-object v9, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 1678
    .local v9, "responseCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const-string v11, "adding ignored dataset "

    const-string/jumbo v12, "logContextCommitted() skipping idless dataset "

    const-string/jumbo v13, "logContextCommitted() no datasets at "

    if-ge v10, v9, :cond_d

    .line 1679
    iget-object v14, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/service/autofill/FillResponse;

    .line 1680
    .local v14, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v15

    .line 1681
    .local v15, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v15, :cond_b

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_3

    move/from16 v16, v2

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    goto/16 :goto_4

    .line 1684
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

    .line 1685
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 1686
    .local v2, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v17, v5

    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v17, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v5

    .line 1687
    .local v5, "datasetId":Ljava/lang/String;
    if-nez v5, :cond_5

    .line 1688
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v18, :cond_4

    .line 1689
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

    .line 1688
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v18, v6

    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_3

    .line 1692
    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v18, v6

    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1693
    .end local v8    # "hasAtLeastOneDataset":Z
    .local v6, "hasAtLeastOneDataset":Z
    iget-object v8, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v8, :cond_7

    .line 1694
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    move v8, v6

    goto :goto_3

    .line 1695
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

    .line 1696
    :cond_8
    if-nez v3, :cond_9

    .line 1697
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    move-object v3, v8

    .line 1699
    :cond_9
    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move v8, v6

    .line 1684
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

    .line 1681
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

    .line 1682
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

    .line 1678
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

    .line 1705
    .end local v2    # "flags":I
    .end local v5    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "i":I
    .restart local v16    # "flags":I
    .restart local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .restart local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v2

    .line 1707
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-nez v8, :cond_f

    if-nez v2, :cond_f

    .line 1708
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_e

    .line 1709
    const-string/jumbo v5, "logContextCommittedLocked(): skipped (no datasets nor fields classification ids)"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_e
    return-void

    .line 1715
    :cond_f
    const/4 v5, 0x0

    move-object/from16 v6, v18

    .end local v18    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "i":I
    .restart local v6    # "changedDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_6
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v5, v10, :cond_2a

    .line 1716
    iget-object v10, v0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/autofill/ViewState;

    .line 1717
    .local v10, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v14

    .line 1722
    .local v14, "state":I
    and-int/lit8 v15, v14, 0x8

    if-eqz v15, :cond_29

    .line 1724
    and-int/lit16 v15, v14, 0x800

    if-eqz v15, :cond_15

    .line 1725
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getDatasetId()Ljava/lang/String;

    move-result-object v15

    .line 1726
    .local v15, "datasetId":Ljava/lang/String;
    if-nez v15, :cond_10

    .line 1728
    move-object/from16 v18, v1

    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .local v18, "lastResponse":Landroid/service/autofill/FillResponse;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v2

    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v32, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    const-string/jumbo v2, "logContextCommitted(): no dataset id on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1734
    .end local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    :cond_10
    move-object/from16 v18, v1

    move-object/from16 v32, v2

    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1735
    .local v1, "autofilledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 1736
    .local v2, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v1, :cond_12

    invoke-virtual {v1, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1737
    sget-boolean v19, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v19, :cond_11

    .line 1738
    move-object/from16 v19, v1

    .end local v1    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .local v19, "autofilledValue":Landroid/view/autofill/AutofillValue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v20, "currentValue":Landroid/view/autofill/AutofillValue;
    const-string/jumbo v2, "logContextCommitted(): ignoring changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " because it has same value that was autofilled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1737
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v1    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_11
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .end local v1    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1736
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v1    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    :cond_12
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    .line 1744
    .end local v1    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v2    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_13

    .line 1745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "logContextCommitted() found changed state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_13
    if-nez v17, :cond_14

    .line 1748
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v17, v1

    .line 1749
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    move-object/from16 v1, v17

    goto :goto_7

    .line 1747
    :cond_14
    move-object/from16 v1, v17

    .line 1751
    .end local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .local v1, "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_7
    iget-object v2, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1752
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1753
    .end local v15    # "datasetId":Ljava/lang/String;
    .end local v19    # "autofilledValue":Landroid/view/autofill/AutofillValue;
    .end local v20    # "currentValue":Landroid/view/autofill/AutofillValue;
    move-object/from16 v17, v1

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1754
    .end local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v17    # "changedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_15
    move-object/from16 v18, v1

    move-object/from16 v32, v2

    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    invoke-virtual {v10}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 1755
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_17

    .line 1756
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_16

    .line 1757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "logContextCommitted(): skipping view without current value ( "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1756
    :cond_16
    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_14

    .line 1763
    :cond_17
    if-eqz v8, :cond_28

    .line 1764
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_8
    if-ge v2, v9, :cond_27

    .line 1765
    iget-object v15, v0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/service/autofill/FillResponse;

    .line 1766
    .local v15, "response":Landroid/service/autofill/FillResponse;
    move-object/from16 v19, v3

    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v19, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v15}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v3

    .line 1767
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v3, :cond_25

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_18

    move-object/from16 v24, v1

    move-object/from16 v21, v3

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    goto/16 :goto_12

    .line 1772
    :cond_18
    const/16 v20, 0x0

    move/from16 v35, v20

    move-object/from16 v20, v7

    move/from16 v7, v35

    .local v7, "k":I
    .local v20, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_9
    move/from16 v33, v8

    .end local v8    # "hasAtLeastOneDataset":Z
    .local v33, "hasAtLeastOneDataset":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_24

    .line 1773
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/autofill/Dataset;

    .line 1774
    .local v8, "dataset":Landroid/service/autofill/Dataset;
    move-object/from16 v21, v3

    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1775
    .local v3, "datasetId":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 1776
    sget-boolean v22, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v22, :cond_19

    .line 1777
    move/from16 v34, v9

    .end local v9    # "responseCount":I
    .local v34, "responseCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1776
    .end local v34    # "responseCount":I
    .restart local v9    # "responseCount":I
    :cond_19
    move/from16 v34, v9

    .line 1772
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v8    # "dataset":Landroid/service/autofill/Dataset;
    .end local v9    # "responseCount":I
    .restart local v34    # "responseCount":I
    :goto_a
    move-object/from16 v24, v1

    move-object/from16 v23, v12

    goto/16 :goto_11

    .line 1781
    .end local v34    # "responseCount":I
    .restart local v3    # "datasetId":Ljava/lang/String;
    .restart local v8    # "dataset":Landroid/service/autofill/Dataset;
    .restart local v9    # "responseCount":I
    :cond_1a
    move/from16 v34, v9

    .line 1782
    .end local v9    # "responseCount":I
    .restart local v34    # "responseCount":I
    invoke-virtual {v8}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    .line 1783
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/16 v22, 0x0

    move/from16 v35, v22

    move-object/from16 v22, v8

    move/from16 v8, v35

    .local v8, "l":I
    .local v22, "dataset":Landroid/service/autofill/Dataset;
    :goto_b
    move-object/from16 v23, v12

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v8, v12, :cond_1f

    .line 1784
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/autofill/AutofillValue;

    .line 1785
    .local v12, "candidate":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v12}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1e

    .line 1786
    sget-boolean v24, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v24, :cond_1b

    .line 1787
    move-object/from16 v24, v1

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .local v24, "currentValue":Landroid/view/autofill/AutofillValue;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v9

    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .local v25, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const-string v9, "field "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " was manually filled with value set by dataset "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1786
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_1b
    move-object/from16 v24, v1

    move-object/from16 v25, v9

    .line 1791
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_c
    if-nez v20, :cond_1c

    .line 1792
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v20, v1

    goto :goto_d

    .line 1791
    :cond_1c
    move-object/from16 v1, v20

    .line 1794
    .end local v20    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v1, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :goto_d
    iget-object v9, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 1795
    invoke-virtual {v1, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1796
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v9, :cond_1d

    .line 1797
    move-object/from16 v20, v9

    .end local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v20, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArraySet;

    move-object/from16 v26, v12

    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v26, "candidate":Landroid/view/autofill/AutofillValue;
    const/4 v12, 0x1

    invoke-direct {v9, v12}, Landroid/util/ArraySet;-><init>(I)V

    .line 1798
    .end local v20    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v12, v10, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v12, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1796
    .end local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    :cond_1d
    move-object/from16 v20, v9

    move-object/from16 v26, v12

    .line 1800
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    :goto_e
    invoke-virtual {v9, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v20, v1

    goto :goto_f

    .line 1785
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v26    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .local v20, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    :cond_1e
    move-object/from16 v24, v1

    move-object/from16 v25, v9

    move-object/from16 v26, v12

    .line 1783
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .end local v12    # "candidate":Landroid/view/autofill/AutofillValue;
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :goto_f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v12, v23

    move-object/from16 v1, v24

    move-object/from16 v9, v25

    goto :goto_b

    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    :cond_1f
    move-object/from16 v24, v1

    move-object/from16 v25, v9

    .line 1803
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8    # "l":I
    .end local v9    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    iget-object v1, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    .line 1804
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 1805
    :cond_20
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_21

    .line 1806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    :cond_21
    if-nez v19, :cond_22

    .line 1809
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v19, v1

    goto :goto_10

    .line 1808
    :cond_22
    move-object/from16 v1, v19

    .line 1811
    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_10
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v19, v1

    .line 1772
    .end local v1    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "datasetId":Ljava/lang/String;
    .end local v22    # "dataset":Landroid/service/autofill/Dataset;
    .end local v25    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    .restart local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_23
    :goto_11
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v21

    move-object/from16 v12, v23

    move-object/from16 v1, v24

    move/from16 v8, v33

    move/from16 v9, v34

    goto/16 :goto_9

    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v34    # "responseCount":I
    .local v1, "currentValue":Landroid/view/autofill/AutofillValue;
    .local v3, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v9, "responseCount":I
    :cond_24
    move-object/from16 v24, v1

    move-object/from16 v21, v3

    move/from16 v34, v9

    move-object/from16 v23, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v9    # "responseCount":I
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v34    # "responseCount":I
    move-object/from16 v3, v19

    move-object/from16 v7, v20

    goto :goto_13

    .line 1767
    .end local v20    # "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33    # "hasAtLeastOneDataset":Z
    .end local v34    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "manuallyFilledIds":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v8, "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_25
    move-object/from16 v24, v1

    move-object/from16 v21, v3

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    .line 1768
    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33    # "hasAtLeastOneDataset":Z
    .restart local v34    # "responseCount":I
    :goto_12
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_26

    .line 1769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    .end local v15    # "response":Landroid/service/autofill/FillResponse;
    .end local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_26
    move-object/from16 v3, v19

    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_13
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v12, v23

    move-object/from16 v1, v24

    move/from16 v8, v33

    move/from16 v9, v34

    goto/16 :goto_8

    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33    # "hasAtLeastOneDataset":Z
    .end local v34    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_27
    move-object/from16 v24, v1

    move-object/from16 v19, v3

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33    # "hasAtLeastOneDataset":Z
    .restart local v34    # "responseCount":I
    goto :goto_14

    .line 1763
    .end local v2    # "j":I
    .end local v19    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v33    # "hasAtLeastOneDataset":Z
    .end local v34    # "responseCount":I
    .restart local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v3    # "ignoredDatasets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_28
    move-object/from16 v24, v1

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    .end local v1    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .restart local v33    # "hasAtLeastOneDataset":Z
    .restart local v34    # "responseCount":I
    goto :goto_14

    .line 1722
    .end local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v24    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v33    # "hasAtLeastOneDataset":Z
    .end local v34    # "responseCount":I
    .local v1, "lastResponse":Landroid/service/autofill/FillResponse;
    .local v2, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_29
    move-object/from16 v18, v1

    move-object/from16 v32, v2

    move/from16 v33, v8

    move/from16 v34, v9

    move-object/from16 v23, v12

    .line 1715
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .end local v10    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v14    # "state":I
    .restart local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v33    # "hasAtLeastOneDataset":Z
    .restart local v34    # "responseCount":I
    :goto_14
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    move-object/from16 v12, v23

    move-object/from16 v2, v32

    move/from16 v8, v33

    move/from16 v9, v34

    goto/16 :goto_6

    .end local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v33    # "hasAtLeastOneDataset":Z
    .end local v34    # "responseCount":I
    .restart local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v8    # "hasAtLeastOneDataset":Z
    .restart local v9    # "responseCount":I
    :cond_2a
    move-object/from16 v18, v1

    move-object/from16 v32, v2

    move/from16 v33, v8

    move/from16 v34, v9

    .line 1823
    .end local v1    # "lastResponse":Landroid/service/autofill/FillResponse;
    .end local v2    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "i":I
    .end local v8    # "hasAtLeastOneDataset":Z
    .end local v9    # "responseCount":I
    .restart local v18    # "lastResponse":Landroid/service/autofill/FillResponse;
    .restart local v32    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .restart local v33    # "hasAtLeastOneDataset":Z
    .restart local v34    # "responseCount":I
    const/4 v1, 0x0

    .line 1824
    .local v1, "manuallyFilledFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v2, 0x0

    .line 1827
    .local v2, "manuallyFilledDatasetIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v7, :cond_2b

    .line 1828
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1829
    .local v4, "size":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 1830
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 1831
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_15
    if-ge v5, v4, :cond_2b

    .line 1832
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 1833
    .local v8, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 1834
    .local v9, "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    .end local v8    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v9    # "datasetIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 1839
    .end local v4    # "size":I
    .end local v5    # "i":I
    :cond_2b
    iget-object v4, v0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v5, v0, Lcom/android/server/autofill/Session;->id:I

    iget-object v8, v0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v9, v0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-boolean v11, v0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-object/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v3

    move-object/from16 v24, v17

    move-object/from16 v25, v6

    move-object/from16 v26, v1

    move-object/from16 v27, v2

    move-object/from16 v28, p1

    move-object/from16 v29, p2

    move-object/from16 v30, v10

    move/from16 v31, v11

    invoke-virtual/range {v19 .. v31}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logContextCommittedLocked(ILandroid/os/Bundle;Ljava/util/ArrayList;Landroid/util/ArraySet;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/ComponentName;Z)V

    .line 1843
    return-void
.end method

.method private logFieldClassificationScore(Lcom/android/server/autofill/FieldClassificationStrategy;Landroid/service/autofill/FieldClassificationUserData;)V
    .locals 25
    .param p1, "fcStrategy"    # Lcom/android/server/autofill/FieldClassificationStrategy;
    .param p2, "userData"    # Landroid/service/autofill/FieldClassificationUserData;

    .line 1852
    move-object/from16 v9, p0

    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getValues()[Ljava/lang/String;

    move-result-object v15

    .line 1853
    .local v15, "userValues":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getCategoryIds()[Ljava/lang/String;

    move-result-object v14

    .line 1855
    .local v14, "categoryIds":[Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithm()Ljava/lang/String;

    move-result-object v19

    .line 1856
    .local v19, "defaultAlgorithm":Ljava/lang/String;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getDefaultFieldClassificationArgs()Landroid/os/Bundle;

    move-result-object v20

    .line 1858
    .local v20, "defaultArgs":Landroid/os/Bundle;
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationAlgorithms()Landroid/util/ArrayMap;

    move-result-object v21

    .line 1859
    .local v21, "algorithms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Landroid/service/autofill/FieldClassificationUserData;->getFieldClassificationArgs()Landroid/util/ArrayMap;

    move-result-object v22

    .line 1862
    .local v22, "args":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-eqz v15, :cond_2

    if-eqz v14, :cond_2

    array-length v0, v15

    array-length v1, v14

    if-eq v0, v1, :cond_0

    move-object v4, v14

    move-object v5, v15

    goto/16 :goto_2

    .line 1870
    :cond_0
    invoke-static {}, Landroid/service/autofill/UserData;->getMaxFieldClassificationIdsSize()I

    move-result v13

    .line 1872
    .local v13, "maxFieldsSize":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1873
    .local v7, "detectedFieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1877
    .local v8, "detectedFieldClassifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification;>;"
    iget-object v1, v9, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1878
    :try_start_0
    iget-object v0, v9, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1879
    .local v0, "viewStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/autofill/ViewState;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1881
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v12

    .line 1884
    .local v12, "viewsSize":I
    new-array v10, v12, [Landroid/view/autofill/AutofillId;

    .line 1885
    .local v10, "autofillIds":[Landroid/view/autofill/AutofillId;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v11, v1

    .line 1886
    .local v11, "currentValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v1, 0x0

    .line 1887
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

    .line 1888
    .local v1, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1889
    add-int/lit8 v3, v23, 0x1

    .end local v23    # "k":I
    .local v3, "k":I
    iget-object v4, v1, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    aput-object v4, v10, v23

    .line 1890
    .end local v1    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v23, v3

    goto :goto_0

    .line 1893
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

    .line 1960
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

    .line 1962
    return-void

    .line 1879
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

    .line 1862
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

    .line 1863
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

    .line 1864
    .local v1, "valuesLength":I
    :goto_3
    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    array-length v0, v4

    .line 1865
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

    .line 1867
    return-void
.end method

.method private logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "viewState"    # Lcom/android/server/autofill/ViewState;

    .line 2821
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2822
    :cond_0
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2823
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2824
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2825
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2826
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2827
    .local v0, "length":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    .line 2828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): resetting value that was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " chars long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillSession"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    :cond_1
    const/16 v1, 0x464

    invoke-direct {p0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0x465

    .line 2832
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2833
    .local v1, "log":Landroid/metrics/LogMaker;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2835
    .end local v0    # "length":I
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_2
    return-void
.end method

.method private logSaveShown()V
    .locals 3

    .line 2253
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logSaveShown(ILandroid/os/Bundle;)V

    .line 2254
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

    .line 2489
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getPreviousSessionsLocked(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2491
    .local v0, "previousSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/autofill/Session;>;"
    if-eqz v0, :cond_7

    .line 2492
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string/jumbo v2, "mergeSessions("

    const-string v3, "AutofillSession"

    if-eqz v1, :cond_0

    .line 2493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): Merging the content of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2494
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sessions for task "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2493
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2497
    .local v1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    .line 2498
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    .line 2499
    .local v5, "previousSession":Lcom/android/server/autofill/Session;
    iget-object v6, v5, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    .line 2500
    .local v6, "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    if-nez v6, :cond_1

    .line 2501
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

    .line 2503
    goto :goto_1

    .line 2505
    :cond_1
    if-eqz p1, :cond_2

    .line 2506
    invoke-direct {v5}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2508
    :cond_2
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_3

    .line 2509
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

    .line 2512
    :cond_3
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2513
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-nez v7, :cond_5

    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v7, :cond_5

    .line 2514
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_4

    .line 2515
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

    .line 2518
    :cond_4
    iget-object v7, v5, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 2497
    .end local v5    # "previousSession":Lcom/android/server/autofill/Session;
    .end local v6    # "previousContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 2521
    .end local v4    # "i":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 2527
    .end local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2529
    .restart local v1    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    :goto_2
    return-object v1
.end method

.method private newLogMaker(I)Landroid/metrics/LogMaker;
    .locals 1
    .param p1, "category"    # I

    .line 4028
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

    .line 4032
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-static {p1, v0, p2, v1, v2}, Lcom/android/server/autofill/Helper;->newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0
.end method

.method private notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V
    .locals 5
    .param p1, "disableDuration"    # J
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 3081
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3082
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3084
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/autofill/IAutoFillManagerClient;->notifyDisableAutofill(JLandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3087
    goto :goto_0

    .line 3085
    :catch_0
    move-exception v1

    .line 3086
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error notifying client disable autofill: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3088
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 3089
    return-void

    .line 3088
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private notifyFillUiHidden(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 1367
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiHidden(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1372
    goto :goto_0

    .line 1373
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1370
    :catch_0
    move-exception v1

    .line 1371
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "AutofillSession"

    const-string v3, "Error sending fill UI hidden notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1373
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1374
    return-void

    .line 1373
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyFillUiShown(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 1377
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyFillUiShown(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    goto :goto_0

    .line 1383
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1380
    :catch_0
    move-exception v1

    .line 1381
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "AutofillSession"

    const-string v3, "Error sending fill UI shown notification"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1383
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 1384
    return-void

    .line 1383
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    .line 3066
    .local p2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3067
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3069
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    if-eqz v1, :cond_1

    .line 3070
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2, v3, p1}, Landroid/view/autofill/IAutoFillManagerClient;->notifyNoFillUi(ILandroid/view/autofill/AutofillId;I)V

    goto :goto_0

    .line 3071
    :cond_1
    if-eqz p1, :cond_2

    .line 3072
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v1, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3076
    :cond_2
    :goto_0
    goto :goto_1

    .line 3074
    :catch_0
    move-exception v1

    .line 3075
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

    .line 3077
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 3078
    return-void

    .line 3077
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

    .line 1058
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1059
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1060
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 1061
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

    .line 1063
    monitor-exit v1

    return-void

    .line 1065
    :cond_0
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_2

    .line 1066
    const-string v2, "AutofillSession"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishing session due to service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    if-eqz p2, :cond_1

    const-string/jumbo v4, "timeout"

    goto :goto_0

    :cond_1
    const-string v4, "failure"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1066
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 1070
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/metrics/LogMaker;

    .line 1071
    .local v2, "requestLog":Landroid/metrics/LogMaker;
    if-nez v2, :cond_3

    .line 1072
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

    .line 1074
    :cond_3
    if-eqz p2, :cond_4

    const/4 v3, 0x2

    goto :goto_1

    :cond_4
    const/16 v3, 0xb

    :goto_1
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 1076
    :goto_2
    if-eqz v0, :cond_6

    .line 1077
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v3

    .line 1078
    .local v3, "targetSdk":I
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_5

    .line 1079
    const/4 v0, 0x0

    .line 1080
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

    .line 1083
    :cond_5
    if-eqz p3, :cond_6

    .line 1084
    const/16 v4, 0x624

    .line 1085
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1084
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1088
    .end local v2    # "requestLog":Landroid/metrics/LogMaker;
    .end local v3    # "targetSdk":I
    :cond_6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 1091
    if-eqz v0, :cond_7

    .line 1092
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    invoke-virtual {v1, p3, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1094
    :cond_7
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1095
    return-void

    .line 1088
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

    .line 3203
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 3204
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const v1, 0x104014b

    invoke-virtual {v0, v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(ILcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3207
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getFillContextByRequestIdLocked(I)Landroid/service/autofill/FillContext;

    move-result-object v0

    .line 3210
    .local v0, "context":Landroid/service/autofill/FillContext;
    const-string v1, "AutofillSession"

    if-eqz v0, :cond_1

    .line 3211
    invoke-virtual {v0}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v2

    .line 3212
    .local v2, "structure":Landroid/app/assist/AssistStructure;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 3213
    .local v2, "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    goto :goto_0

    .line 3214
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

    .line 3215
    const/4 v2, 0x0

    .line 3218
    .restart local v2    # "autofillableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :goto_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastResponse()V

    .line 3222
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3223
    if-nez v3, :cond_3

    and-int/lit8 v3, p2, 0x4

    if-nez v3, :cond_3

    .line 3224
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_2

    .line 3225
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

    .line 3229
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 3230
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    goto :goto_2

    .line 3232
    :cond_3
    and-int/lit8 v3, p2, 0x4

    const-string/jumbo v4, "keeping session "

    if-eqz v3, :cond_5

    .line 3233
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_4

    .line 3234
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

    .line 3238
    :cond_4
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v3, v4}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    goto :goto_1

    .line 3240
    :cond_5
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6

    .line 3241
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

    .line 3245
    :cond_6
    :goto_1
    iput-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 3247
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Landroid/view/autofill/IAutoFillManagerClient;->setState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3250
    goto :goto_2

    .line 3248
    :catch_0
    move-exception v3

    .line 3249
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Error setting client to autofill-only"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3252
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method private processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "newResponse"    # Landroid/service/autofill/FillResponse;
    .param p2, "newClientState"    # Landroid/os/Bundle;
    .param p3, "flags"    # I

    .line 3427
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3429
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    .line 3430
    .local v0, "requestId":I
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 3431
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

    .line 3436
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 3440
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    .line 3442
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3443
    if-eqz p2, :cond_2

    move-object v1, p2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 3445
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3446
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 3448
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v1, :cond_3

    .line 3449
    return-void

    .line 3453
    :cond_3
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 3454
    .local v1, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v1, p3}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 3455
    return-void
.end method

.method private removeSelf()V
    .locals 2

    .line 3956
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3957
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3958
    monitor-exit v0

    .line 3959
    return-void

    .line 3958
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

    .line 3192
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 3194
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/service/autofill/FillResponse;->setRequestId(I)V

    .line 3196
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3198
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 3199
    return-void
.end method

.method private requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V
    .locals 12
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .line 733
    invoke-virtual {p1}, Lcom/android/server/autofill/ViewState;->getResponse()Landroid/service/autofill/FillResponse;

    move-result-object v0

    .line 734
    .local v0, "existingResponse":Landroid/service/autofill/FillResponse;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 735
    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V

    .line 740
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    .line 741
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    const-string v4, ", flags="

    const-string v5, "AutofillSession"

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 752
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 757
    :cond_2
    sget-object v3, Lcom/android/server/autofill/Session;->sIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 758
    .local v3, "requestId":I
    const/high16 v6, -0x80000000

    if-eq v3, v6, :cond_2

    .line 761
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    add-int/2addr v6, v1

    .line 762
    .local v6, "ordinal":I
    const/16 v7, 0x38b

    invoke-direct {p0, v7}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v7

    const/16 v8, 0x5ae

    .line 763
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 764
    .local v7, "log":Landroid/metrics/LogMaker;
    if-eqz p3, :cond_3

    .line 765
    const/16 v8, 0x5ac

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 767
    :cond_3
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v8, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 769
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_4

    .line 770
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requesting structure for request #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ,requestId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 784
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 785
    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v4

    .line 786
    .local v4, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isInlineSuggestionsEnabledByAutofillProviderLocked()Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    .line 788
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 789
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    .line 790
    invoke-virtual {v2, p1, v1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    move-result-object v1

    .line 792
    .local v1, "inlineSuggestionsRequestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    if-eqz v1, :cond_5

    .line 793
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 794
    .local v2, "focusedId":Landroid/view/autofill/AutofillId;
    new-instance v8, Landroid/os/RemoteCallback;

    new-instance v9, Lcom/android/server/autofill/-$$Lambda$Session$yOl8leOVB88HAy4hixOFnb-xCCI;

    invoke-direct {v9, p0, v2, v1}, Lcom/android/server/autofill/-$$Lambda$Session$yOl8leOVB88HAy4hixOFnb-xCCI;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V

    iget-object v10, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v8, v9, v10}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v4, v8}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    .line 802
    const/high16 v8, 0x10000

    invoke-virtual {p1, v8}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 804
    .end local v1    # "inlineSuggestionsRequestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .end local v2    # "focusedId":Landroid/view/autofill/AutofillId;
    :cond_5
    goto :goto_0

    .line 805
    :cond_6
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;

    .line 811
    :goto_0
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 812
    .local v1, "receiverExtras":Landroid/os/Bundle;
    const-string v2, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 813
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    .local v8, "identity":J
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iget-object v10, p0, Lcom/android/server/autofill/Session;->mAssistReceiver:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v11, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v2, v10, v1, v11, p3}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to request autofill data for "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 820
    :cond_7
    :try_start_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    nop

    .line 824
    .end local v1    # "receiverExtras":Landroid/os/Bundle;
    .end local v8    # "identity":J
    goto :goto_1

    .line 820
    .restart local v1    # "receiverExtras":Landroid/os/Bundle;
    .restart local v8    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    nop

    .end local v0    # "existingResponse":Landroid/service/autofill/FillResponse;
    .end local v3    # "requestId":I
    .end local v4    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .end local v6    # "ordinal":I
    .end local v7    # "log":Landroid/metrics/LogMaker;
    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local p2    # "newState":I
    .end local p3    # "flags":I
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 822
    .end local v1    # "receiverExtras":Landroid/os/Bundle;
    .end local v8    # "identity":J
    .restart local v0    # "existingResponse":Landroid/service/autofill/FillResponse;
    .restart local v3    # "requestId":I
    .restart local v4    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .restart local v6    # "ordinal":I
    .restart local v7    # "log":Landroid/metrics/LogMaker;
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local p2    # "newState":I
    .restart local p3    # "flags":I
    :catch_0
    move-exception v1

    .line 825
    :goto_1
    return-void

    .line 742
    .end local v3    # "requestId":I
    .end local v4    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .end local v6    # "ordinal":I
    .end local v7    # "log":Landroid/metrics/LogMaker;
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_9

    .line 743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNewFillResponse(): triggering augmented autofill instead (mForAugmentedAutofillOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 748
    invoke-direct {p0, p3}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    .line 749
    return-void
.end method

.method private requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z
    .locals 5
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p3, "flags"    # I

    .line 2550
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 2551
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2552
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Re-starting session on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and flags "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    :cond_0
    const/16 v0, 0x100

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2554
    return v3

    .line 2558
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v0

    const-string v4, ": "

    if-eqz v0, :cond_3

    .line 2559
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_2

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting partition or augmented request for view id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2561
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2560
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    :cond_2
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0, p3}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2564
    return v3

    .line 2566
    :cond_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    .line 2567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not starting new partition for view "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2568
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2567
    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_4
    return v1
.end method

.method private requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z
    .locals 12
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 3021
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    const-string v2, "AutofillSession"

    if-nez v0, :cond_0

    .line 3022
    const-string/jumbo v0, "requestShowInlineSuggestionsLocked(): no view currently focused"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    return v1

    .line 3025
    :cond_0
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3027
    .local v9, "focusedId":Landroid/view/autofill/AutofillId;
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3028
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v10

    .line 3029
    .local v10, "inlineSuggestionsRequest":Ljava/util/Optional;, "Ljava/util/Optional<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    invoke-virtual {v10}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3030
    const-string v0, "InlineSuggestionsRequest unavailable"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3031
    return v1

    .line 3034
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3035
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v11

    .line 3036
    .local v11, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-nez v11, :cond_2

    .line 3037
    const-string v0, "RemoteInlineSuggestionRenderService not found"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    return v1

    .line 3041
    :cond_2
    nop

    .line 3042
    invoke-virtual {v10}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InlineSuggestionsRequest;

    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;

    invoke-direct {v5, p0, v9}, Lcom/android/server/autofill/-$$Lambda$Session$Pjng4nWFLSS2miVoJMFq_OQCncI;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;)V

    iget v7, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    .line 3041
    move-object v1, p1

    move-object v2, v9

    move-object v3, p2

    move-object v4, p0

    move-object v6, v11

    invoke-static/range {v0 .. v8}, Lcom/android/server/autofill/ui/InlineFillUi;->forAutofill(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v0

    .line 3049
    .local v0, "inlineFillUi":Lcom/android/server/autofill/ui/InlineFillUi;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v1

    return v1
.end method

.method private setClientLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "client"    # Landroid/os/IBinder;

    .line 911
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 912
    invoke-static {p1}, Landroid/view/autofill/IAutoFillManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    .line 913
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/-$$Lambda$Session$pnp5H13_WJpAwp-_PPOjh_vYbqs;-><init>(Lcom/android/server/autofill/Session;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 924
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 926
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

    .line 927
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 929
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;IZ)V
    .locals 9
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "state"    # I
    .param p3, "clearResponse"    # Z

    .line 3462
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    .line 3463
    .local v0, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3464
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3465
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 3466
    .local v4, "dataset":Landroid/service/autofill/Dataset;
    if-nez v4, :cond_0

    .line 3467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring null dataset on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    goto :goto_1

    .line 3470
    :cond_0
    invoke-direct {p0, p1, v4, p2, p3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 3464
    .end local v4    # "dataset":Landroid/service/autofill/Dataset;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    goto :goto_4

    .line 3472
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3473
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 3474
    .local v6, "autofillId":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v7

    .line 3475
    .local v7, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez p3, :cond_3

    .line 3476
    invoke-virtual {v7, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_3

    .line 3478
    :cond_3
    invoke-virtual {v7, v2}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 3473
    .end local v6    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v7    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3482
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v3

    .line 3483
    .local v3, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v3, :cond_6

    .line 3484
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 3485
    .local v4, "requiredIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_5

    .line 3486
    array-length v5, v4

    move v6, v1

    :goto_5
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    .line 3487
    .local v7, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v7, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3486
    .end local v7    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 3490
    :cond_5
    invoke-virtual {v3}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 3491
    .local v5, "optionalIds":[Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_6

    .line 3492
    array-length v6, v5

    move v7, v1

    :goto_6
    if-ge v7, v6, :cond_6

    aget-object v8, v5, v7

    .line 3493
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v8, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3492
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 3498
    .end local v4    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .end local v5    # "optionalIds":[Landroid/view/autofill/AutofillId;
    :cond_6
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    .line 3499
    .local v4, "authIds":[Landroid/view/autofill/AutofillId;
    if-eqz v4, :cond_7

    .line 3500
    array-length v5, v4

    :goto_7
    if-ge v1, v5, :cond_7

    aget-object v6, v4, v1

    .line 3501
    .local v6, "id":Landroid/view/autofill/AutofillId;
    invoke-direct {p0, v6, p2, v2}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    .line 3500
    .end local v6    # "id":Landroid/view/autofill/AutofillId;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3504
    :cond_7
    return-void
.end method

.method private setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    .locals 8
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "state"    # I
    .param p4, "clearResponse"    # Z

    .line 3512
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 3513
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    .line 3514
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillValue;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 3515
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillId;

    .line 3516
    .local v3, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 3517
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    invoke-direct {p0, v3, p3, v4}, Lcom/android/server/autofill/Session;->createOrUpdateViewStateLocked(Landroid/view/autofill/AutofillId;ILandroid/view/autofill/AutofillValue;)Lcom/android/server/autofill/ViewState;

    move-result-object v5

    .line 3518
    .local v5, "viewState":Lcom/android/server/autofill/ViewState;
    invoke-virtual {p2}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v6

    .line 3519
    .local v6, "datasetId":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 3520
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/ViewState;->setDatasetId(Ljava/lang/String;)V

    .line 3522
    :cond_0
    if-eqz p4, :cond_1

    .line 3523
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    goto :goto_1

    .line 3524
    :cond_1
    if-eqz p1, :cond_2

    .line 3525
    invoke-virtual {v5, p1}, Lcom/android/server/autofill/ViewState;->setResponse(Landroid/service/autofill/FillResponse;)V

    .line 3514
    .end local v3    # "id":Landroid/view/autofill/AutofillId;
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    .end local v5    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v6    # "datasetId":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3528
    .end local v2    # "j":I
    :cond_3
    return-void
.end method

.method private shouldResetSessionStateOnInputMethodSwitch()Z
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 352
    return v1

    .line 355
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isInlineSuggestionsEnabledByAutofillProviderLocked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 356
    return v2

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 360
    .local v0, "state":Lcom/android/server/autofill/ViewState;
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    if-eqz v3, :cond_2

    .line 362
    return v2

    .line 365
    :cond_2
    return v1
.end method

.method private shouldStartNewPartitionLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 12
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 2583
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2584
    .local v0, "currentView":Lcom/android/server/autofill/ViewState;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 2585
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v1

    const/high16 v4, 0x10000

    and-int/2addr v1, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 2589
    :cond_1
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    const-string v5, "AutofillSession"

    if-eqz v4, :cond_3

    .line 2590
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 2591
    const-string v1, "Starting a new partition because the response has expired."

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_2
    return v2

    .line 2596
    :cond_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 2597
    .local v1, "numResponses":I
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 2598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not starting a new partition on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because session "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " reached maximum of "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2599
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getPartitionMaxCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2598
    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2600
    return v3

    .line 2603
    :cond_4
    const/4 v4, 0x0

    .local v4, "responseNum":I
    :goto_1
    if-ge v4, v1, :cond_b

    .line 2604
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/FillResponse;

    .line 2606
    .local v5, "response":Landroid/service/autofill/FillResponse;
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getIgnoredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2607
    return v3

    .line 2610
    :cond_5
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 2611
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    if-eqz v6, :cond_7

    .line 2612
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2613
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 2614
    :cond_6
    return v3

    .line 2618
    :cond_7
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v7

    .line 2619
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v7, :cond_9

    .line 2620
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2622
    .local v8, "numDatasets":I
    const/4 v9, 0x0

    .local v9, "dataSetNum":I
    :goto_2
    if-ge v9, v8, :cond_9

    .line 2623
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/Dataset;

    invoke-virtual {v10}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 2625
    .local v10, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-eqz v10, :cond_8

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2626
    return v3

    .line 2622
    .end local v10    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2631
    .end local v8    # "numDatasets":I
    .end local v9    # "dataSetNum":I
    :cond_9
    invoke-virtual {v5}, Landroid/service/autofill/FillResponse;->getAuthenticationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2632
    return v3

    .line 2603
    .end local v5    # "response":Landroid/service/autofill/FillResponse;
    .end local v6    # "saveInfo":Landroid/service/autofill/SaveInfo;
    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2636
    .end local v4    # "responseNum":I
    :cond_b
    return v2
.end method

.method private startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    .locals 7
    .param p1, "authenticationId"    # I
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "authenticateInline"    # Z

    .line 3610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3611
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 3613
    monitor-exit v0

    .line 3616
    goto :goto_0

    .line 3613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/autofill/Session;
    .end local p1    # "authenticationId":I
    .end local p2    # "intent":Landroid/content/IntentSender;
    .end local p3    # "fillInIntent":Landroid/content/Intent;
    .end local p4    # "authenticateInline":Z
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3614
    .restart local p0    # "this":Lcom/android/server/autofill/Session;
    .restart local p1    # "authenticationId":I
    .restart local p2    # "intent":Landroid/content/IntentSender;
    .restart local p3    # "fillInIntent":Landroid/content/Intent;
    .restart local p4    # "authenticateInline":Z
    :catch_0
    move-exception v0

    .line 3615
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AutofillSession"

    const-string v2, "Error launching auth intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3617
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;
    .locals 20
    .param p1, "flags"    # I

    .line 3267
    move-object/from16 v8, p0

    and-int/lit8 v0, p1, 0x4

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    .line 3268
    return-object v9

    .line 3272
    :cond_0
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3273
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getSupportedSmartSuggestionModesLocked()I

    move-result v10

    .line 3274
    .local v10, "supportedModes":I
    const-string v11, "AutofillSession"

    if-nez v10, :cond_2

    .line 3275
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no supported modes"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    :cond_1
    return-object v9

    .line 3281
    :cond_2
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3282
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteAugmentedAutofillServiceLocked()Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-result-object v12

    .line 3283
    .local v12, "remoteService":Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    if-nez v12, :cond_4

    .line 3284
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no service for user"

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    :cond_3
    return-object v9

    .line 3290
    :cond_4
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_e

    .line 3291
    const/4 v13, 0x1

    .line 3297
    .local v13, "mode":I
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-nez v0, :cond_5

    .line 3298
    const-string/jumbo v0, "triggerAugmentedAutofillLocked(): no view currently focused"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    return-object v9

    .line 3302
    :cond_5
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3303
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isWhitelistedForAugmentedAutofillLocked(Landroid/content/ComponentName;)Z

    move-result v14

    .line 3305
    .local v14, "isWhitelisted":Z
    if-nez v14, :cond_7

    .line 3306
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_6

    .line 3307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerAugmentedAutofillLocked(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3308
    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not whitelisted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3307
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    :cond_6
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 3312
    return-object v9

    .line 3315
    :cond_7
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_8

    .line 3316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling Augmented Autofill Service ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3317
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") on view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " using suggestion mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    invoke-static {v13}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " when server returned null for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3316
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_8
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v1, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/autofill/ViewState;

    .line 3324
    .local v15, "viewState":Lcom/android/server/autofill/ViewState;
    const/16 v0, 0x1000

    invoke-virtual {v15, v0}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3325
    invoke-virtual {v15}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v16

    .line 3327
    .local v16, "currentValue":Landroid/view/autofill/AutofillValue;
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    .line 3328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    .line 3330
    :cond_9
    const/16 v0, 0x65e

    .line 3331
    invoke-virtual {v12}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3330
    invoke-direct {v8, v0, v1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 3332
    .local v7, "log":Landroid/metrics/LogMaker;
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3334
    iget-object v6, v8, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3336
    .local v6, "focusedId":Landroid/view/autofill/AutofillId;
    new-instance v5, Lcom/android/server/autofill/-$$Lambda$Session$OB9ff8oA_-EExr2duy432m-mPnk;

    .local v5, "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    invoke-direct {v5, v8}, Lcom/android/server/autofill/-$$Lambda$Session$OB9ff8oA_-EExr2duy432m-mPnk;-><init>(Lcom/android/server/autofill/Session;)V

    .line 3342
    new-instance v4, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;

    .local v4, "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v12

    move-object v9, v4

    .end local v4    # "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .local v9, "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    move-object v4, v6

    move-object/from16 v17, v5

    .end local v5    # "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    .local v17, "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    move v5, v14

    move/from16 v18, v13

    move-object v13, v6

    .end local v6    # "focusedId":Landroid/view/autofill/AutofillId;
    .local v13, "focusedId":Landroid/view/autofill/AutofillId;
    .local v18, "mode":I
    move-object/from16 v6, v16

    move-object/from16 v19, v7

    .end local v7    # "log":Landroid/metrics/LogMaker;
    .local v19, "log":Landroid/metrics/LogMaker;
    move-object/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/android/server/autofill/-$$Lambda$Session$vnAYMR2l0ZLBVwdJaNSYmXYWWQo;-><init>(Lcom/android/server/autofill/Session;ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;)V

    .line 3370
    iget-object v0, v8, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3371
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    .line 3372
    .local v0, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-eqz v0, :cond_c

    iget-boolean v1, v8, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-nez v1, :cond_a

    .line 3374
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->isInlineSuggestionsEnabledByAutofillProviderLocked()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-boolean v1, v8, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    if-eqz v1, :cond_c

    .line 3376
    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/server/autofill/Session;->isViewFocusedLocked(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3377
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_b

    const-string v1, "Create inline request for augmented autofill"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_b
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;

    invoke-direct {v2, v8, v13, v9}, Lcom/android/server/autofill/-$$Lambda$Session$rGSqIe556eUkJhy8uVf_APhYFvg;-><init>(Lcom/android/server/autofill/Session;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;)V

    iget-object v3, v8, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->getInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    goto :goto_0

    .line 3387
    :cond_c
    iget-object v1, v8, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3388
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillInlineSessionController;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 3387
    invoke-interface {v9, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3390
    :goto_0
    iget-object v1, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-nez v1, :cond_d

    .line 3391
    new-instance v1, Lcom/android/server/autofill/-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE;

    invoke-direct {v1, v12}, Lcom/android/server/autofill/-$$Lambda$Session$OLDugvMROFfiQeHylt5uJUuHuIE;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)V

    iput-object v1, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3393
    :cond_d
    iget-object v1, v8, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    return-object v1

    .line 3293
    .end local v0    # "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .end local v9    # "requestAugmentedAutofill":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    .end local v13    # "focusedId":Landroid/view/autofill/AutofillId;
    .end local v14    # "isWhitelisted":Z
    .end local v15    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v16    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v17    # "inlineSuggestionsResponseCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    .end local v18    # "mode":I
    .end local v19    # "log":Landroid/metrics/LogMaker;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported Smart Suggestion mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3294
    const/4 v0, 0x0

    return-object v0
.end method

.method private unlinkClientVultureLocked()V
    .locals 3

    .line 933
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    if-eqz v1, :cond_1

    .line 934
    invoke-interface {v0}, Landroid/view/autofill/IAutoFillManagerClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v0

    .line 935
    .local v0, "unlinked":Z
    if-nez v0, :cond_0

    .line 936
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

    .line 938
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/Session;->mClientVulture:Landroid/os/IBinder$DeathRecipient;

    .line 940
    .end local v0    # "unlinked":Z
    :cond_1
    return-void
.end method

.method private updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V
    .locals 4
    .param p1, "newTextValue"    # Ljava/lang/String;
    .param p2, "viewState"    # Lcom/android/server/autofill/ViewState;

    .line 2907
    if-nez p1, :cond_0

    .line 2910
    const-string p1, ""

    .line 2912
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    .line 2914
    .local v0, "currentValue":Landroid/view/autofill/AutofillValue;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 2917
    :cond_1
    invoke-virtual {v0}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "currentTextValue":Ljava/lang/String;
    goto :goto_1

    .line 2915
    .end local v1    # "currentTextValue":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v1, ""

    .line 2920
    .restart local v1    # "currentTextValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    const/16 v3, 0x4000

    and-int/2addr v2, v3

    if-nez v2, :cond_3

    .line 2921
    invoke-static {p1, v1}, Lcom/android/server/autofill/Session;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2922
    invoke-virtual {p2, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    goto :goto_2

    .line 2924
    :cond_3
    invoke-static {v1, p1}, Lcom/android/server/autofill/Session;->containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2926
    const v2, 0x8000

    invoke-virtual {p2, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2928
    :cond_4
    :goto_2
    return-void
.end method

.method private updateTrackedIdsLocked()V
    .locals 18

    .line 3095
    move-object/from16 v1, p0

    const-string v2, "AutofillSession"

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v3

    .line 3096
    .local v3, "response":Landroid/service/autofill/FillResponse;
    if-nez v3, :cond_0

    return-void

    .line 3098
    :cond_0
    const/4 v0, 0x0

    .line 3099
    .local v0, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3100
    const/4 v5, 0x1

    .line 3101
    .local v5, "saveOnFinish":Z
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v6

    .line 3104
    .local v6, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v7, 0x1

    if-eqz v6, :cond_7

    .line 3105
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getTriggerId()Landroid/view/autofill/AutofillId;

    move-result-object v8

    .line 3106
    .local v8, "saveTriggerId":Landroid/view/autofill/AutofillId;
    if-eqz v8, :cond_1

    .line 3107
    const/16 v9, 0x4cc

    invoke-direct {v1, v9}, Lcom/android/server/autofill/Session;->writeLog(I)V

    .line 3109
    :cond_1
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v9

    .line 3110
    .local v9, "flags":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v10, v7

    goto :goto_0

    :cond_2
    move v10, v4

    :goto_0
    iput-boolean v10, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3113
    if-eqz v10, :cond_5

    .line 3114
    if-nez v0, :cond_3

    .line 3115
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    .line 3117
    :cond_3
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3118
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3121
    :cond_4
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 3122
    invoke-virtual {v6}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3125
    :cond_5
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_6

    .line 3126
    const/4 v5, 0x0

    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    goto :goto_1

    .line 3125
    :cond_6
    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    goto :goto_1

    .line 3130
    .end local v8    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .end local v9    # "flags":I
    :cond_7
    const/4 v9, 0x0

    .line 3131
    .restart local v9    # "flags":I
    const/4 v8, 0x0

    move v15, v5

    move-object v14, v8

    move v13, v9

    move-object v5, v0

    .line 3137
    .end local v0    # "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .end local v9    # "flags":I
    .local v5, "trackedViews":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v13, "flags":I
    .local v14, "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v15, "saveOnFinish":Z
    :goto_1
    invoke-virtual {v3}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v12

    .line 3138
    .local v12, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    const/4 v0, 0x0

    .line 3139
    .local v0, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    if-eqz v12, :cond_d

    .line 3140
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 3141
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/autofill/Dataset;

    .line 3142
    .local v9, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v9}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v10

    .line 3143
    .local v10, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    if-nez v10, :cond_8

    goto :goto_4

    .line 3145
    :cond_8
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v11, v4, :cond_b

    .line 3146
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 3147
    .local v4, "id":Landroid/view/autofill/AutofillId;
    if-eqz v5, :cond_9

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 3148
    :cond_9
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    .line 3145
    .end local v4    # "id":Landroid/view/autofill/AutofillId;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto :goto_3

    .line 3140
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

    .line 3139
    .end local v8    # "i":I
    :cond_d
    move-object v4, v0

    .line 3155
    .end local v0    # "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    .local v4, "fillableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    :goto_5
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_f

    .line 3156
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

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " saveOnFinish:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 3162
    :catch_0
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move-object/from16 v17, v14

    goto :goto_8

    .line 3160
    :cond_f
    :goto_7
    :try_start_2
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v9, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-static {v5}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v10

    iget-boolean v11, v1, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    .line 3161
    invoke-static {v4}, Lcom/android/server/autofill/Helper;->toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3160
    move-object v7, v12

    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v7, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move v12, v15

    move/from16 v16, v13

    .end local v13    # "flags":I
    .local v16, "flags":I
    move-object v13, v0

    move-object/from16 v17, v14

    .end local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v17, "saveTriggerId":Landroid/view/autofill/AutofillId;
    :try_start_3
    invoke-interface/range {v8 .. v14}, Landroid/view/autofill/IAutoFillManagerClient;->setTrackedViews(I[Landroid/view/autofill/AutofillId;ZZ[Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3164
    goto :goto_9

    .line 3162
    :catch_1
    move-exception v0

    goto :goto_8

    .end local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v16    # "flags":I
    .end local v17    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .restart local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v13    # "flags":I
    .restart local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :catch_2
    move-exception v0

    move-object v7, v12

    move/from16 v16, v13

    move-object/from16 v17, v14

    .line 3163
    .end local v12    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v13    # "flags":I
    .end local v14    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v7    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v16    # "flags":I
    .restart local v17    # "saveTriggerId":Landroid/view/autofill/AutofillId;
    :goto_8
    const-string v8, "Cannot set tracked ids"

    invoke-static {v2, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_9
    return-void
.end method

.method private updateValuesForSaveLocked()V
    .locals 15

    .line 2375
    nop

    .line 2376
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 2378
    .local v0, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2379
    .local v1, "numContexts":I
    const/4 v2, 0x0

    .local v2, "contextNum":I
    :goto_0
    if-ge v2, v1, :cond_a

    .line 2380
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/autofill/FillContext;

    .line 2382
    .local v3, "context":Landroid/service/autofill/FillContext;
    if-nez v3, :cond_0

    .line 2383
    goto/16 :goto_3

    .line 2386
    :cond_0
    nop

    .line 2387
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getIdsOfAllViewStatesLocked()[Landroid/view/autofill/AutofillId;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/autofill/FillContext;->findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    .line 2389
    .local v4, "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v6, "updateValuesForSaveLocked(): updating "

    const-string v7, "AutofillSession"

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2391
    :cond_1
    const/4 v5, 0x0

    .local v5, "viewStateNum":I
    :goto_1
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 2392
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/autofill/ViewState;

    .line 2394
    .local v8, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v9, v8, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    .line 2395
    .local v9, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v10

    .line 2396
    .local v10, "value":Landroid/view/autofill/AutofillValue;
    if-nez v10, :cond_2

    .line 2397
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v11, :cond_7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateValuesForSaveLocked(): skipping "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2400
    :cond_2
    aget-object v11, v4, v5

    .line 2401
    .local v11, "node":Landroid/app/assist/AssistStructure$ViewNode;
    if-nez v11, :cond_3

    .line 2402
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "callSaveLocked(): did not find node with id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    goto :goto_2

    .line 2405
    :cond_3
    sget-boolean v12, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v12, :cond_4

    .line 2406
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

    .line 2409
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/autofill/ViewState;->getSanitizedValue()Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2411
    .local v12, "sanitizedValue":Landroid/view/autofill/AutofillValue;
    if-nez v12, :cond_5

    .line 2413
    invoke-direct {p0, v0, v9, v10}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    .line 2415
    :cond_5
    if-eqz v12, :cond_6

    .line 2416
    invoke-virtual {v11, v12}, Landroid/app/assist/AssistStructure$ViewNode;->updateAutofillValue(Landroid/view/autofill/AutofillValue;)V

    goto :goto_2

    .line 2417
    :cond_6
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v13, :cond_7

    .line 2418
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

    .line 2391
    .end local v8    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v9    # "id":Landroid/view/autofill/AutofillId;
    .end local v10    # "value":Landroid/view/autofill/AutofillValue;
    .end local v11    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v12    # "sanitizedValue":Landroid/view/autofill/AutofillValue;
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 2424
    .end local v5    # "viewStateNum":I
    :cond_8
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 2426
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_9

    .line 2427
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

    .line 2429
    invoke-virtual {v3}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 2379
    .end local v3    # "context":Landroid/service/autofill/FillContext;
    .end local v4    # "nodes":[Landroid/app/assist/AssistStructure$ViewNode;
    :cond_9
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2432
    .end local v2    # "contextNum":I
    :cond_a
    return-void
.end method

.method private updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V
    .locals 8
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "value"    # Landroid/view/autofill/AutofillValue;
    .param p3, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p4, "flags"    # I

    .line 2841
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2844
    :cond_0
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2847
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "textValue":Ljava/lang/String;
    :goto_0
    goto :goto_2

    .line 2842
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "textValue":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .line 2849
    .restart local v1    # "textValue":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v1, p3}, Lcom/android/server/autofill/Session;->updateFilteringStateOnValueChangedLocked(Ljava/lang/String;Lcom/android/server/autofill/ViewState;)V

    .line 2851
    invoke-virtual {p3, p2}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2853
    move-object v0, v1

    .line 2855
    .local v0, "filterText":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2856
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    const/16 v3, 0x8

    if-eqz v2, :cond_6

    .line 2857
    invoke-virtual {v2, p2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "AutofillSession"

    if-eqz v4, :cond_4

    .line 2860
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_3

    .line 2861
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignoring autofilled change on id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    :cond_3
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 2866
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2867
    return-void

    .line 2868
    :cond_4
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v6}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2869
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    const/4 v6, 0x4

    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    .line 2871
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v4, :cond_5

    .line 2872
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "field changed after autofill on id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2874
    :cond_5
    invoke-virtual {p3, v6}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 2875
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 2876
    .local v4, "currentView":Lcom/android/server/autofill/ViewState;
    invoke-virtual {v4, p4}, Lcom/android/server/autofill/ViewState;->maybeCallOnFillReady(I)V

    .line 2880
    .end local v4    # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_6
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2881
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_8

    .line 2882
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 2883
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->disableFilterMatching(Landroid/view/autofill/AutofillId;)V

    .line 2885
    :cond_7
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z

    goto :goto_3

    .line 2886
    :cond_8
    iget-object v4, p3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2887
    invoke-virtual {p3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_9

    .line 2888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 2891
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v5, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 2895
    :cond_9
    :goto_3
    invoke-virtual {p3, v3}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2896
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v3

    invoke-virtual {v3, v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->filterFillUi(Ljava/lang/String;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2897
    return-void
.end method

.method private writeLog(I)V
    .locals 2
    .param p1, "category"    # I

    .line 4036
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4037
    return-void
.end method

.method private varargs wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "fmt"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 4057
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4058
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4059
    :try_start_0
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mWtfHistory:Landroid/util/LocalLog;

    invoke-virtual {v2, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 4060
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4062
    if-eqz p1, :cond_0

    .line 4063
    const-string v1, "AutofillSession"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4065
    :cond_0
    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    :goto_0
    return-void

    .line 4060
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "intent"    # Landroid/content/IntentSender;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "authenticateInline"    # Z

    .line 1191
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1192
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

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 1198
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

    .line 1200
    monitor-exit v0

    return-void

    .line 1202
    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 1203
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_2

    .line 1204
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 1205
    monitor-exit v0

    return-void

    .line 1207
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1209
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setAuthenticationSelected(ILandroid/os/Bundle;)V

    .line 1211
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v0

    .line 1212
    .local v0, "authenticationId":I
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$LYgiVF7QUn4954p-wNYTeWDnGkw;

    .line 1214
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 1212
    move-object v3, p0

    move-object v5, p3

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1215
    return-void

    .line 1207
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

    .line 3551
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    .line 3552
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

    .line 3555
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3556
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_1

    .line 3557
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

    .line 3559
    monitor-exit v0

    return-void

    .line 3562
    :cond_1
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v1

    if-nez v1, :cond_4

    .line 3563
    if-eqz p4, :cond_2

    .line 3564
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3566
    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_3

    .line 3567
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 3569
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/autofill/Session;->autoFillApp(Landroid/service/autofill/Dataset;)V

    .line 3570
    monitor-exit v0

    return-void

    .line 3574
    :cond_4
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetAuthenticationSelected(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 3575
    const/4 v1, 0x0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-direct {p0, v1, p3, v2, v3}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V

    .line 3576
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-direct {p0, p1, v1}, Lcom/android/server/autofill/Session;->createAuthFillInIntentLocked(ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 3577
    .local v1, "fillInIntent":Landroid/content/Intent;
    if-nez v1, :cond_5

    .line 3578
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 3579
    monitor-exit v0

    return-void

    .line 3581
    :cond_5
    invoke-static {p1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v2

    .line 3583
    .local v2, "authenticationId":I
    invoke-virtual {p3}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v4

    invoke-direct {p0, v2, v4, v1, v3}, Lcom/android/server/autofill/Session;->startAuthentication(ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    .line 3586
    .end local v1    # "fillInIntent":Landroid/content/Intent;
    .end local v2    # "authenticationId":I
    monitor-exit v0

    .line 3587
    return-void

    .line 3586
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method autoFillApp(Landroid/service/autofill/Dataset;)V
    .locals 14
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;

    .line 3780
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3781
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 3782
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

    .line 3784
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 3788
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3789
    .local v1, "entryCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3790
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3791
    .local v3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    const/4 v4, 0x0

    .line 3792
    .local v4, "waitingDatasetAuth":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 3793
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/autofill/AutofillId;

    iget-object v8, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v7, v8}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v5

    .line 3794
    .local v6, "hideHighlight":Z
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_5

    .line 3795
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 3796
    goto :goto_2

    .line 3798
    :cond_2
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    .line 3799
    .local v8, "viewId":Landroid/view/autofill/AutofillId;
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3800
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillValue;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3801
    iget-object v9, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/autofill/ViewState;

    .line 3802
    .local v9, "viewState":Lcom/android/server/autofill/ViewState;
    if-eqz v9, :cond_4

    .line 3803
    invoke-virtual {v9}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v10

    const/16 v11, 0x40

    and-int/2addr v10, v11

    if-eqz v10, :cond_4

    .line 3804
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v10, :cond_3

    .line 3805
    const-string v10, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autofillApp(): view "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " waiting auth"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3807
    :cond_3
    const/4 v4, 0x1

    .line 3808
    invoke-virtual {v9, v11}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3794
    .end local v8    # "viewId":Landroid/view/autofill/AutofillId;
    .end local v9    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3811
    .end local v7    # "i":I
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    .line 3812
    if-eqz v4, :cond_6

    .line 3813
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v7, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3815
    :cond_6
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_7

    const-string v7, "AutofillSession"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "autoFillApp(): the buck is on the app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3817
    :cond_7
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v8, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v7, v8, v2, v3, v6}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 3818
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 3819
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    if-nez v7, :cond_8

    .line 3820
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    .line 3822
    :cond_8
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3824
    :cond_9
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-direct {p0, v7, p1, v8, v5}, Lcom/android/server/autofill/Session;->setViewStatesLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3828
    .end local v1    # "entryCount":I
    .end local v2    # "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v3    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v4    # "waitingDatasetAuth":Z
    .end local v6    # "hideHighlight":Z
    :cond_a
    goto :goto_3

    .line 3826
    :catch_0
    move-exception v1

    .line 3827
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

    .line 3829
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-exit v0

    .line 3830
    return-void

    .line 3829
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method callSaveLocked()V
    .locals 4

    .line 2439
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 2440
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

    .line 2442
    return-void

    .line 2444
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2445
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 2446
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2445
    const-string v2, "callSaveLocked() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2447
    return-void

    .line 2450
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

    .line 2452
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2453
    const-string v0, "callSaveLocked(): no contexts"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    return-void

    .line 2457
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateValuesForSaveLocked()V

    .line 2460
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelCurrentRequestLocked()V

    .line 2462
    invoke-direct {p0, v2}, Lcom/android/server/autofill/Session;->mergePreviousSessionLocked(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2464
    .local v0, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v1, Landroid/service/autofill/SaveRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2, v3}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;Ljava/util/ArrayList;)V

    .line 2466
    .local v1, "saveRequest":Landroid/service/autofill/SaveRequest;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/RemoteFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;)V

    .line 2467
    return-void
.end method

.method public cancelSave()V
    .locals 4

    .line 1257
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1258
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1260
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1261
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

    .line 1263
    monitor-exit v0

    return-void

    .line 1265
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$cYu1t6lYVopApYW-vct82-7slZk;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1268
    return-void

    .line 1265
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public cancelSession()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1338
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1339
    monitor-exit v0

    .line 1340
    return-void

    .line 1339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method destroyAugmentedAutofillWindowsLocked()V
    .locals 1

    .line 3946
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3947
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3948
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    .line 3950
    :cond_0
    return-void
.end method

.method destroyLocked()Lcom/android/server/autofill/RemoteFillService;
    .locals 8

    .line 3852
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 3853
    const/4 v0, 0x0

    return-object v0

    .line 3856
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->unlinkClientVultureLocked()V

    .line 3857
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3858
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->clearCallback(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 3859
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    if-eqz v0, :cond_1

    .line 3860
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->destroyLocked(Landroid/view/autofill/AutofillId;)V

    .line 3862
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3863
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v0

    .line 3864
    .local v0, "remoteRenderService":Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    if-eqz v0, :cond_2

    .line 3865
    iget v1, p0, Lcom/android/server/autofill/Session;->userId:I

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->destroySuggestionViews(II)V

    .line 3868
    :cond_2
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    .line 3871
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3872
    .local v1, "totalRequests":I
    const-string v3, "destroyLocked(): logging "

    const-string v4, "AutofillSession"

    if-lez v1, :cond_4

    .line 3873
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " requests"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3874
    :cond_3
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_4

    .line 3875
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 3876
    .local v6, "log":Landroid/metrics/LogMaker;
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3874
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3880
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 3881
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    nop

    .line 3882
    .local v5, "totalAugmentedRequests":I
    if-lez v5, :cond_7

    .line 3883
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_6

    .line 3884
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " augmented requests"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3886
    :cond_6
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v5, :cond_7

    .line 3887
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/metrics/LogMaker;

    .line 3888
    .local v4, "log":Landroid/metrics/LogMaker;
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v4}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3886
    .end local v4    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3892
    .end local v3    # "i":I
    :cond_7
    const/16 v3, 0x397

    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x5af

    .line 3893
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 3894
    .local v3, "log":Landroid/metrics/LogMaker;
    if-lez v5, :cond_8

    .line 3895
    const/16 v4, 0x65f

    .line 3896
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3895
    invoke-virtual {v3, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3898
    :cond_8
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v4, :cond_9

    .line 3899
    const/16 v4, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3901
    :cond_9
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3903
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    return-object v2
.end method

.method public dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .line 1299
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1301
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

    .line 1303
    monitor-exit v0

    return-void

    .line 1305
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1307
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->dispatchUnhandledKey(ILandroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    goto :goto_0

    .line 1308
    :catch_0
    move-exception v1

    .line 1309
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to dispatch unhandled key"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1310
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1312
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

    .line 1315
    :goto_0
    monitor-exit v0

    .line 1316
    return-void

    .line 1315
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

    .line 3626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3627
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "id: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3628
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "uid: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->uid:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3629
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "taskId: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->taskId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3630
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "flags: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/autofill/Session;->mFlags:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3631
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mComponentName: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3632
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mActivityToken: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTime: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    invoke-virtual {p2, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 3634
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Time to show UI: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3635
    iget-wide v1, p0, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-string v4, "N/A"

    if-nez v3, :cond_0

    .line 3636
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 3638
    :cond_0
    iget-wide v5, p0, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3639
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3641
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3642
    .local v1, "requestLogsSizes":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mSessionLogs: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3643
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x23

    if-ge v2, v1, :cond_1

    .line 3644
    iget-object v5, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3645
    .local v5, "requestId":I
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/metrics/LogMaker;

    .line 3646
    .local v6, "log":Landroid/metrics/LogMaker;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": req="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3647
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ", log="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2, v6}, Lcom/android/server/autofill/Session;->dumpRequestLog(Ljava/io/PrintWriter;Landroid/metrics/LogMaker;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3643
    .end local v5    # "requestId":I
    .end local v6    # "log":Landroid/metrics/LogMaker;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3649
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mResponses: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3650
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    const-string/jumbo v5, "null"

    if-nez v2, :cond_2

    .line 3651
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 3653
    :cond_2
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3654
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 3655
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3656
    const/16 v6, 0x20

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    iget-object v6, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3654
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3659
    .end local v2    # "i":I
    :cond_3
    :goto_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mCurrentViewId: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3660
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mDestroyed: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3661
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mIsSaving: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 3662
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "mPendingSaveUi: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3663
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3664
    .local v2, "numberViews":I
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mViewStates size: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3665
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_4

    .line 3666
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "ViewState at #"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3667
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/autofill/ViewState;

    invoke-virtual {v6, v0, p2}, Lcom/android/server/autofill/ViewState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3665
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3670
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mContexts: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3671
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 3672
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3673
    .local v3, "numContexts":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    if-ge v5, v3, :cond_7

    .line 3674
    iget-object v6, p0, Lcom/android/server/autofill/Session;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    .line 3676
    .local v6, "context":Landroid/service/autofill/FillContext;
    if-nez v6, :cond_5

    .line 3677
    goto :goto_6

    .line 3680
    :cond_5
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3681
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v7, :cond_6

    .line 3682
    const-string v7, "AssistStructure dumped at logcat)"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3685
    invoke-virtual {v6}, Landroid/service/autofill/FillContext;->getStructure()Landroid/app/assist/AssistStructure;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/assist/AssistStructure;->dump(Z)V

    .line 3673
    .end local v6    # "context":Landroid/service/autofill/FillContext;
    :cond_6
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3688
    .end local v3    # "numContexts":I
    .end local v5    # "i":I
    :cond_7
    goto :goto_7

    .line 3689
    :cond_8
    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3692
    :goto_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mHasCallback: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3693
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 3694
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mClientState: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->getSize()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 3695
    const-string v3, " bytes"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3697
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mCompatMode: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3698
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mUrlBar: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3699
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v3, :cond_a

    .line 3700
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 3702
    :cond_a
    const-string v3, "id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3703
    const-string v3, " domain="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3704
    const-string v3, " text="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {p2, v3}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 3706
    :goto_8
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSaveOnAllViewsInvisible: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 3708
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mSelectedDatasetIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/autofill/Session;->mSelectedDatasetIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3709
    iget-boolean v3, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v3, :cond_b

    .line 3710
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "For Augmented Autofill Only"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3712
    :cond_b
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillDestroyer:Ljava/lang/Runnable;

    if-eqz v3, :cond_c

    .line 3713
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "has mAugmentedAutofillDestroyer"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    :cond_c
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    if-eqz v3, :cond_d

    .line 3716
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "number augmented requests: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3717
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedRequestsLogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 3720
    :cond_d
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    if-eqz v3, :cond_e

    .line 3721
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mAugmentedAutofillableIds: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3722
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3724
    :cond_e
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mRemoteFillService:Lcom/android/server/autofill/RemoteFillService;

    if-eqz v3, :cond_f

    .line 3725
    invoke-virtual {v3, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 3727
    :cond_f
    return-void
.end method

.method public fill(IILandroid/service/autofill/Dataset;)V
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "datasetIndex"    # I
    .param p3, "dataset"    # Landroid/service/autofill/Dataset;

    .line 1227
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1229
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

    .line 1231
    monitor-exit v0

    return-void

    .line 1233
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$knR7oLyPSG_CoFAxBA_nqSw3JBo;

    .line 1236
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1234
    move-object v2, p0

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1237
    return-void

    .line 1233
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

    .line 554
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 555
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 556
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 557
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 561
    :cond_0
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->isList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->getAutofillOptionsFromContextsLocked(Landroid/view/autofill/AutofillId;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 563
    .local v3, "options":[Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 564
    invoke-virtual {v1}, Landroid/view/autofill/AutofillValue;->getListValue()I

    move-result v4

    .line 565
    .local v4, "index":I
    aget-object v5, v3, v4

    .line 566
    .local v5, "option":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    monitor-exit v0

    return-object v2

    .line 568
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

    .line 572
    .end local v1    # "value":Landroid/view/autofill/AutofillValue;
    .end local v3    # "options":[Ljava/lang/CharSequence;
    :cond_3
    monitor-exit v0

    .line 573
    return-object v2

    .line 572
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

    .line 578
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->findValueLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 580
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method forceRemoveSelfIfForAugmentedAutofillOnlyLocked()V
    .locals 2

    .line 3917
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 3918
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

    .line 3921
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-nez v0, :cond_1

    return-void

    .line 3923
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 3924
    return-void
.end method

.method forceRemoveSelfLocked()V
    .locals 1

    .line 3912
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 3913
    return-void
.end method

.method forceRemoveSelfLocked(I)V
    .locals 6
    .param p1, "clientState"    # I

    .line 3928
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

    .line 3930
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    .line 3931
    .local v0, "isPendingSaveUi":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 3932
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 3933
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p0, v5}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 3934
    if-nez v0, :cond_1

    .line 3936
    :try_start_0
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v3, p1, v2}, Landroid/view/autofill/IAutoFillManagerClient;->setSessionFinished(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3939
    goto :goto_0

    .line 3937
    :catch_0
    move-exception v2

    .line 3938
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error notifying client to finish session"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3941
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyAugmentedAutofillWindowsLocked()V

    .line 3942
    return-void
.end method

.method getActivityTokenLocked()Landroid/os/IBinder;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getClient()Landroid/view/autofill/IAutoFillManagerClient;
    .locals 2

    .line 3059
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3060
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    monitor-exit v0

    return-object v1

    .line 3061
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getSaveInfoFlagsLocked()I
    .locals 2

    .line 1604
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getSaveInfoLocked()Landroid/service/autofill/SaveInfo;

    move-result-object v0

    .line 1605
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

    .line 3053
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3054
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    monitor-exit v0

    return v1

    .line 3055
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

    .line 3996
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

    .line 2312
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    return v0
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

    .line 1894
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    const-string v0, "AutofillSession"

    if-nez v5, :cond_1

    .line 1895
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "setFieldClassificationScore(): no results"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    :cond_0
    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1897
    return-void

    .line 1899
    :cond_1
    const-string/jumbo v6, "scores"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    .line 1900
    .local v6, "scores":Landroid/service/autofill/AutofillFieldClassificationService$Scores;
    if-nez v6, :cond_2

    .line 1901
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No field classification score on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    return-void

    .line 1904
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .line 1907
    .local v8, "j":I
    const/4 v7, 0x0

    :goto_0
    move/from16 v9, p1

    if-ge v7, v9, :cond_c

    .line 1908
    :try_start_0
    aget-object v10, p2, v7

    .line 1912
    .local v10, "autofillId":Landroid/view/autofill/AutofillId;
    const/4 v11, 0x0

    .line 1913
    .local v11, "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    const/4 v8, 0x0

    :goto_1
    array-length v12, v2

    if-ge v8, v12, :cond_8

    .line 1914
    aget-object v12, p4, v8

    .line 1915
    .local v12, "categoryId":Ljava/lang/String;
    iget-object v13, v6, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v13, v13, v7

    aget v13, v13, v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    .local v13, "score":F
    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    const-string v15, " and id "

    if-lez v14, :cond_6

    .line 1917
    if-nez v11, :cond_3

    .line 1918
    :try_start_1
    new-instance v14, Landroid/util/ArrayMap;

    array-length v5, v2

    invoke-direct {v14, v5}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v14

    .line 1920
    :cond_3
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1921
    .local v5, "currentScore":Ljava/lang/Float;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v14

    cmpl-float v14, v14, v13

    if-lez v14, :cond_4

    .line 1922
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_7

    .line 1923
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

    .line 1928
    :cond_4
    sget-boolean v14, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v14, :cond_5

    .line 1929
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

    .line 1932
    :cond_5
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v11, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    nop

    .end local v5    # "currentScore":Ljava/lang/Float;
    goto :goto_2

    :cond_6
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v2, :cond_7

    .line 1934
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

    .line 1913
    .end local v12    # "categoryId":Ljava/lang/String;
    .end local v13    # "score":F
    :cond_7
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_1

    .line 1937
    :cond_8
    if-nez v11, :cond_9

    .line 1938
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

    .line 1943
    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1944
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

    .line 1945
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1946
    .local v5, "fieldId":Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 1947
    .local v12, "score":F
    new-instance v13, Landroid/service/autofill/FieldClassification$Match;

    invoke-direct {v13, v5, v12}, Landroid/service/autofill/FieldClassification$Match;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1944
    nop

    .end local v5    # "fieldId":Ljava/lang/String;
    .end local v12    # "score":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1949
    :cond_a
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1950
    new-instance v5, Landroid/service/autofill/FieldClassification;

    invoke-direct {v5, v2}, Landroid/service/autofill/FieldClassification;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1907
    .end local v2    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FieldClassification$Match;>;"
    .end local v10    # "autofillId":Landroid/view/autofill/AutofillId;
    .end local v11    # "scoresByField":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Float;>;"
    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p3

    move-object/from16 v5, p7

    goto/16 :goto_0

    .line 1952
    :catch_0
    move-exception v0

    .line 1953
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

    .line 1954
    return-void

    .line 1955
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_c
    nop

    .line 1957
    invoke-direct {v1, v3, v4}, Lcom/android/server/autofill/Session;->logContextCommitted(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1958
    return-void
.end method

.method public synthetic lambda$requestNewFillResponseLocked$0$Session(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "inlineSuggestionsRequestConsumer"    # Ljava/util/function/Consumer;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 796
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 799
    monitor-exit v0

    .line 800
    return-void

    .line 799
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$requestShowInlineSuggestionsLocked$3$Session(Landroid/view/autofill/AutofillId;)V
    .locals 3
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;

    .line 3044
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    .line 3046
    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3045
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3047
    monitor-exit v0

    .line 3048
    return-void

    .line 3047
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$setClientLocked$1$Session()V
    .locals 4

    .line 914
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

    .line 915
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 916
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    goto :goto_0

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Lcom/android/server/autofill/ui/AutoFillUI;->destroyAll(Lcom/android/server/autofill/ui/PendingUi;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    .line 921
    :goto_0
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$triggerAugmentedAutofillLocked$4$Session(Lcom/android/server/autofill/ui/InlineFillUi;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "response"    # Lcom/android/server/autofill/ui/InlineFillUi;

    .line 3338
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3339
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$triggerAugmentedAutofillLocked$5$Session()V
    .locals 3

    .line 3351
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3352
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->cancelAugmentedAutofillLocked()V

    .line 3355
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 3356
    invoke-static {v2}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 3355
    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 3357
    monitor-exit v0

    .line 3358
    return-void

    .line 3357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$triggerAugmentedAutofillLocked$6$Session(ILcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/AutofillId;ZLandroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .locals 21
    .param p1, "mode"    # I
    .param p2, "remoteService"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .param p3, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p4, "isWhitelisted"    # Z
    .param p5, "currentValue"    # Landroid/view/autofill/AutofillValue;
    .param p6, "inlineSuggestionsResponseCallback"    # Ljava/util/function/Function;
    .param p7, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 3344
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3345
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3346
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 3345
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/Session;->logAugmentedAutofillRequestLocked(ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;ZLjava/lang/Boolean;)V

    .line 3347
    iget v10, v7, Lcom/android/server/autofill/Session;->id:I

    iget-object v11, v7, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v12, v7, Lcom/android/server/autofill/Session;->taskId:I

    iget-object v13, v7, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 3348
    invoke-static/range {p3 .. p3}, Landroid/view/autofill/AutofillId;->withoutSession(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillId;

    move-result-object v14

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA;

    invoke-direct {v0, v7}, Lcom/android/server/autofill/-$$Lambda$Session$cy9pAeTh6TuR9iQXcy-kT3QefxA;-><init>(Lcom/android/server/autofill/Session;)V

    iget-object v1, v7, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 3358
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getRemoteInlineSuggestionRenderServiceLocked()Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move-result-object v19

    iget v1, v7, Lcom/android/server/autofill/Session;->userId:I

    .line 3347
    move-object/from16 v9, p2

    move-object/from16 v15, p5

    move-object/from16 v16, p7

    move-object/from16 v17, p6

    move-object/from16 v18, v0

    move/from16 v20, v1

    invoke-virtual/range {v9 .. v20}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    .line 3359
    monitor-exit v8

    .line 3360
    return-void

    .line 3359
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$triggerAugmentedAutofillLocked$7$Session(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p2, "requestAugmentedAutofill"    # Ljava/util/function/Consumer;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 3380
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSessionController;->onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V

    .line 3384
    monitor-exit v0

    .line 3385
    return-void

    .line 3384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public logContextCommitted()V
    .locals 2

    .line 1613
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$v6ZVyksJuHdWgJ1F8aoa_1LJWPo;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1614
    return-void
.end method

.method public onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)V
    .locals 16
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "filledId"    # Landroid/view/autofill/AutofillId;
    .param p3, "value"    # Landroid/view/autofill/AutofillValue;

    .line 2948
    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2949
    :try_start_0
    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 2950
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

    .line 2952
    monitor-exit v1

    return-void

    .line 2954
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2956
    const/4 v0, 0x0

    .line 2957
    .local v0, "filterText":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2958
    invoke-virtual/range {p3 .. p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 2963
    :cond_1
    move-object v13, v0

    .end local v0    # "filterText":Ljava/lang/String;
    .local v13, "filterText":Ljava/lang/String;
    :goto_0
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2964
    :try_start_1
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object v14, v0

    .line 2965
    .local v14, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v15, v0

    .line 2966
    .local v15, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2967
    if-eqz v14, :cond_7

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 2972
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->supportsInlineSuggestions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2973
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2974
    move-object/from16 v11, p1

    :try_start_2
    invoke-direct {v12, v11, v13}, Lcom/android/server/autofill/Session;->requestShowInlineSuggestionsLocked(Landroid/service/autofill/FillResponse;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2975
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    iget-object v2, v12, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2976
    .local v0, "currentView":Lcom/android/server/autofill/ViewState;
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 2979
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v3, v12, Lcom/android/server/autofill/Session;->id:I

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;)V

    .line 2980
    monitor-exit v1

    return-void

    .line 2982
    .end local v0    # "currentView":Lcom/android/server/autofill/ViewState;
    :cond_3
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2972
    :cond_4
    move-object/from16 v11, p1

    .line 2985
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2986
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v10, v12, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2985
    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object v4, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, p0

    move v11, v0

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/autofill/ui/AutoFillUI;->showFillUi(Landroid/view/autofill/AutofillId;Landroid/service/autofill/FillResponse;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;IZ)V

    .line 2989
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v1, v12, Lcom/android/server/autofill/Session;->id:I

    iget-object v2, v12, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logDatasetShown(ILandroid/os/Bundle;)V

    .line 2991
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2992
    :try_start_3
    iget-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    .line 2994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v12, Lcom/android/server/autofill/Session;->mUiShownTime:J

    .line 2995
    iget-wide v4, v12, Lcom/android/server/autofill/Session;->mStartTime:J

    sub-long/2addr v2, v4

    .line 2996
    .local v2, "duration":J
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_5

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "1st UI for "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 2998
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " shown in "

    .line 2999
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    .local v0, "msg":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3001
    const-string v4, "AutofillSession"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    .end local v0    # "msg":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " app="

    .line 3004
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " svc="

    .line 3005
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v4}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " latency="

    .line 3006
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    .local v0, "historyLog":Ljava/lang/StringBuilder;
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 3008
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mUiLatencyHistory:Landroid/util/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 3010
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v4

    const/16 v5, 0x479

    .line 3011
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 3010
    invoke-direct {v12, v4, v5, v6}, Lcom/android/server/autofill/Session;->addTaggedDataToRequestLogLocked(IILjava/lang/Object;)V

    .line 3013
    .end local v0    # "historyLog":Ljava/lang/StringBuilder;
    .end local v2    # "duration":J
    :cond_6
    monitor-exit v1

    .line 3014
    return-void

    .line 3013
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2968
    :cond_7
    :goto_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "onFillReady(): no service label or icon"

    invoke-direct {v12, v0, v2, v1}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2969
    return-void

    .line 2966
    .end local v14    # "serviceLabel":Ljava/lang/CharSequence;
    .end local v15    # "serviceIcon":Landroid/graphics/drawable/Drawable;
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 2954
    .end local v13    # "filterText":Ljava/lang/String;
    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method

.method public onFillRequestFailure(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 1047
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 1048
    return-void
.end method

.method public onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
    .locals 22
    .param p1, "requestId"    # I
    .param p2, "response"    # Landroid/service/autofill/FillResponse;
    .param p3, "servicePackageName"    # Ljava/lang/String;
    .param p4, "requestFlags"    # I

    .line 950
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 951
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 952
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

    .line 954
    monitor-exit v5

    return-void

    .line 957
    :cond_0
    iget-object v0, v1, Lcom/android/server/autofill/Session;->mRequestLogs:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/metrics/LogMaker;

    move-object v6, v0

    .line 958
    .local v6, "requestLog":Landroid/metrics/LogMaker;
    if-eqz v6, :cond_1

    .line 959
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    goto :goto_0

    .line 961
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

    .line 963
    :goto_0
    const/16 v0, 0x38d

    if-nez v3, :cond_3

    .line 964
    if-eqz v6, :cond_2

    .line 965
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 967
    :cond_2
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 968
    monitor-exit v5

    return-void

    .line 971
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFieldClassificationIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 972
    .local v7, "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    if-eqz v7, :cond_4

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isFieldClassificationEnabledLocked()Z

    move-result v8

    if-nez v8, :cond_4

    .line 973
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

    .line 974
    invoke-direct {v1, v2, v4}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 975
    monitor-exit v5

    return-void

    .line 977
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 979
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v8, v1, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v8, v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->setLastResponse(ILandroid/service/autofill/FillResponse;)V

    .line 981
    const/4 v5, 0x0

    .line 982
    .local v5, "sessionFinishedState":I
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDisableDuration()J

    move-result-wide v14

    .line 983
    .local v14, "disableDuration":J
    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    const/16 v18, 0x0

    if-lez v8, :cond_b

    .line 984
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFlags()I

    move-result v12

    .line 985
    .local v12, "flags":I
    and-int/lit8 v8, v12, 0x2

    const/4 v10, 0x1

    if-eqz v8, :cond_5

    move v8, v10

    goto :goto_1

    :cond_5
    move/from16 v8, v18

    :goto_1
    move/from16 v19, v8

    .line 987
    .local v19, "disableActivityOnly":Z
    nop

    .line 988
    if-eqz v19, :cond_6

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    .line 987
    :goto_2
    invoke-direct {v1, v14, v15, v8}, Lcom/android/server/autofill/Session;->notifyDisableAutofillToClient(JLandroid/content/ComponentName;)V

    .line 990
    if-eqz v19, :cond_7

    .line 991
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget v11, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v13, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move v0, v10

    move/from16 v20, v11

    move-wide v10, v14

    move/from16 v21, v12

    .end local v12    # "flags":I
    .local v21, "flags":I
    move/from16 v12, v20

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForActivity(Landroid/content/ComponentName;JIZ)V

    goto :goto_3

    .line 994
    .end local v21    # "flags":I
    .restart local v12    # "flags":I
    :cond_7
    move v0, v10

    move/from16 v21, v12

    .end local v12    # "flags":I
    .restart local v21    # "flags":I
    iget-object v8, v1, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v9, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget v12, v1, Lcom/android/server/autofill/Session;->id:I

    iget-boolean v13, v1, Lcom/android/server/autofill/Session;->mCompatMode:Z

    move-wide v10, v14

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->disableAutofillForApp(Ljava/lang/String;JIZ)V

    .line 999
    :goto_3
    invoke-direct {v1, v4}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1000
    iput-boolean v0, v1, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    .line 1001
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_8

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Service disabled autofill for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", but session is kept for augmented autofill only"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AutofillSession"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    :cond_8
    return-void

    .line 1007
    :cond_9
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_a

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "Service disabled autofill for "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    .line 1009
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1010
    const-string v8, ": flags="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v21

    .end local v21    # "flags":I
    .local v8, "flags":I
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1011
    const-string v9, ", duration="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1012
    .local v0, "message":Ljava/lang/StringBuilder;
    invoke-static {v14, v15, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 1013
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AutofillSession"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1007
    .end local v0    # "message":Ljava/lang/StringBuilder;
    .end local v8    # "flags":I
    .restart local v21    # "flags":I
    :cond_a
    move/from16 v8, v21

    .line 1015
    .end local v21    # "flags":I
    .restart local v8    # "flags":I
    :goto_4
    const/4 v5, 0x4

    move v8, v5

    goto :goto_5

    .line 983
    .end local v8    # "flags":I
    .end local v19    # "disableActivityOnly":Z
    :cond_b
    move v8, v5

    .line 1018
    .end local v5    # "sessionFinishedState":I
    .local v8, "sessionFinishedState":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1019
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_f

    :cond_d
    cmp-long v0, v14, v16

    if-lez v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    .line 1022
    :cond_f
    :goto_6
    const/4 v0, 0x0

    invoke-direct {v1, v8, v0}, Lcom/android/server/autofill/Session;->notifyUnavailableToClient(ILjava/util/ArrayList;)V

    .line 1023
    iget-object v9, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1024
    :try_start_1
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    iget-object v10, v1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1025
    invoke-static {v10}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v10

    .line 1024
    invoke-virtual {v5, v10}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 1026
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1029
    :goto_7
    if-eqz v6, :cond_11

    .line 1030
    nop

    .line 1031
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_10

    goto :goto_8

    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v18

    :goto_8
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1030
    const/16 v9, 0x38d

    invoke-virtual {v6, v9, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1032
    if-eqz v7, :cond_11

    .line 1033
    const/16 v5, 0x4f7

    array-length v9, v7

    .line 1035
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1033
    invoke-virtual {v6, v5, v9}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1039
    :cond_11
    iget-object v5, v1, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1040
    :try_start_2
    invoke-direct {v1, v3, v0, v4}, Lcom/android/server/autofill/Session;->processResponseLocked(Landroid/service/autofill/FillResponse;Landroid/os/Bundle;I)V

    .line 1041
    monitor-exit v5

    .line 1042
    return-void

    .line 1041
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1026
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 977
    .end local v6    # "requestLog":Landroid/metrics/LogMaker;
    .end local v7    # "fieldClassificationIds":[Landroid/view/autofill/AutofillId;
    .end local v8    # "sessionFinishedState":I
    .end local v14    # "disableDuration":J
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public onFillRequestTimeout(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 1053
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/autofill/Session;->onFillRequestFailureOrTimeout(IZLjava/lang/CharSequence;)V

    .line 1054
    return-void
.end method

.method onPendingSaveUi(ILandroid/os/IBinder;)V
    .locals 1
    .param p1, "operation"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 3986
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/ui/AutoFillUI;->onPendingSaveUi(ILandroid/os/IBinder;)V

    .line 3987
    return-void
.end method

.method public onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "servicePackageName"    # Ljava/lang/String;

    .line 1126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1127
    .local v0, "showMessage":Z
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1130
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v2, :cond_0

    .line 1131
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

    .line 1133
    monitor-exit v1

    return-void

    .line 1135
    :cond_0
    if-eqz v0, :cond_1

    .line 1136
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getTargedSdkLocked()I

    move-result v2

    .line 1137
    .local v2, "targetSdk":I
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_1

    .line 1138
    const/4 v0, 0x0

    .line 1139
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

    .line 1143
    .end local v2    # "targetSdk":I
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1144
    const/16 v1, 0x396

    .line 1145
    invoke-direct {p0, v1, p2}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    const/16 v2, 0xb

    .line 1146
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 1147
    .local v1, "log":Landroid/metrics/LogMaker;
    if-eqz p1, :cond_2

    .line 1148
    const/16 v2, 0x624

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 1150
    :cond_2
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1152
    if-eqz v0, :cond_3

    .line 1153
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v2

    invoke-virtual {v2, p1, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->showError(Ljava/lang/CharSequence;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 1155
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1156
    return-void

    .line 1143
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

    .line 1101
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 1104
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1105
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

    .line 1107
    monitor-exit v0

    return-void

    .line 1109
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1110
    const/16 v0, 0x396

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/Session;->newLogMaker(ILjava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1111
    if-nez p2, :cond_1

    const/16 v1, 0xa

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 1112
    .local v0, "log":Landroid/metrics/LogMaker;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 1113
    if-eqz p2, :cond_3

    .line 1114
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    const-string v1, "AutofillSession"

    const-string v2, "Starting intent sender on save()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/autofill/Session;->startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V

    .line 1119
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1120
    return-void

    .line 1109
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

    .line 1220
    const-string v0, "AutofillSession"

    const-string/jumbo v1, "removing session because service died"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked()V

    .line 1222
    return-void
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 135
    check-cast p1, Lcom/android/server/autofill/RemoteFillService;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/Session;->onServiceDied(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method

.method onSwitchInputMethodLocked()V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    if-eqz v0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->shouldResetSessionStateOnInputMethodSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    .line 337
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v1, :cond_1

    .line 338
    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 341
    :cond_1
    return-void
.end method

.method removeSelfLocked()V
    .locals 3

    .line 3967
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

    .line 3968
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_1

    .line 3969
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

    .line 3971
    return-void

    .line 3973
    :cond_1
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->isSaveUiPendingLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3974
    const-string/jumbo v0, "removeSelfLocked() ignored, waiting for pending save ui"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    return-void

    .line 3978
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->destroyLocked()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 3979
    .local v0, "remoteFillService":Lcom/android/server/autofill/RemoteFillService;
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->removeSessionLocked(I)V

    .line 3980
    if-eqz v0, :cond_3

    .line 3981
    invoke-virtual {v0}, Lcom/android/server/autofill/RemoteFillService;->destroy()V

    .line 3983
    :cond_3
    return-void
.end method

.method public requestHideFillUi(Landroid/view/autofill/AutofillId;)V
    .locals 4
    .param p1, "id"    # Landroid/view/autofill/AutofillId;

    .line 1321
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v2, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v1, v2, p1}, Landroid/view/autofill/IAutoFillManagerClient;->requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    goto :goto_0

    .line 1331
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1326
    :catch_0
    move-exception v1

    .line 1327
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to hide fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v1, p1}, Lcom/android/server/autofill/AutofillInlineSessionController;->hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z

    .line 1331
    monitor-exit v0

    .line 1332
    return-void

    .line 1331
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

    .line 1274
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1276
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

    .line 1278
    monitor-exit v0

    return-void

    .line 1280
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1282
    :try_start_1
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/ViewState;

    .line 1283
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

    .line 1287
    .end local v1    # "view":Lcom/android/server/autofill/ViewState;
    goto :goto_0

    .line 1285
    :catch_0
    move-exception v1

    .line 1286
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "AutofillSession"

    const-string v3, "Error requesting to show fill UI"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1287
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1289
    :cond_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_2

    .line 1290
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

    .line 1294
    :cond_2
    :goto_0
    monitor-exit v0

    .line 1295
    return-void

    .line 1294
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public save()V
    .locals 4

    .line 1242
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1243
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1244
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

    .line 1246
    monitor-exit v0

    return-void

    .line 1248
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Z6K-VL097A8ARGd4URY-lOvvM48;

    iget-object v2, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1, v2, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1252
    return-void

    .line 1248
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V
    .locals 11
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authId"    # I

    .line 1499
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1500
    :cond_0
    const-string v0, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    :goto_0
    nop

    .line 1501
    .local v0, "dataset":Landroid/service/autofill/Dataset;
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v2, "AutofillSession"

    if-eqz v1, :cond_1

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auth result for augmented autofill: sessionId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", authId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dataset="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_1
    if-eqz v0, :cond_4

    .line 1506
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 1507
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1508
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1509
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    .line 1517
    :cond_2
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    .line 1518
    .local v1, "fieldIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    .line 1519
    .local v5, "autofillValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    .line 1520
    .local v6, "fieldId":Landroid/view/autofill/AutofillId;
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    .line 1527
    .local v4, "value":Landroid/view/autofill/AutofillValue;
    iget v7, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 1528
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 1531
    const-string v7, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1532
    .local v7, "clientState":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget v9, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1535
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v9, ", value="

    if-eqz v8, :cond_3

    .line 1536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Filling after auth: fieldId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_3
    :try_start_0
    iget-object v8, p0, Lcom/android/server/autofill/Session;->mClient:Landroid/view/autofill/IAutoFillManagerClient;

    iget v10, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v8, v10, v1, v5, v3}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1543
    goto :goto_1

    .line 1540
    :catch_0
    move-exception v3

    .line 1541
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error filling after auth: fieldId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", error="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-static {v6}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/autofill/AutofillInlineSessionController;->setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 1547
    return-void

    .line 1510
    .end local v1    # "fieldIds":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v4    # "value":Landroid/view/autofill/AutofillValue;
    .end local v5    # "autofillValues":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillValue;>;"
    .end local v6    # "fieldId":Landroid/view/autofill/AutofillId;
    .end local v7    # "clientState":Landroid/os/Bundle;
    :cond_4
    :goto_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_5

    .line 1511
    const-string v1, "Rejecting empty/invalid auth result"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_5
    iget-object v1, p0, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->resetLastAugmentedAutofillResponse()V

    .line 1514
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1515
    return-void
.end method

.method setAuthenticationResultLocked(Landroid/os/Bundle;I)V
    .locals 10
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "authenticationId"    # I

    .line 1398
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 1399
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

    .line 1401
    return-void

    .line 1403
    :cond_0
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getRequestIdFromAuthenticationId(I)I

    move-result v0

    .line 1404
    .local v0, "requestId":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1405
    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/Session;->setAuthenticationResultForAugmentedAutofillLocked(Landroid/os/Bundle;I)V

    .line 1406
    return-void

    .line 1408
    :cond_1
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mResponses:Landroid/util/SparseArray;

    if-nez v2, :cond_2

    .line 1411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthenticationResultLocked("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): no responses"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1413
    return-void

    .line 1415
    :cond_2
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/FillResponse;

    .line 1416
    .local v2, "authenticatedResponse":Landroid/service/autofill/FillResponse;
    if-eqz v2, :cond_d

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 1422
    :cond_3
    invoke-static {p2}, Landroid/view/autofill/AutofillManager;->getDatasetIdFromAuthenticationId(I)I

    move-result v3

    .line 1425
    .local v3, "datasetIdx":I
    const v4, 0xffff

    if-eq v3, v4, :cond_4

    .line 1426
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/autofill/Dataset;

    .line 1427
    .local v5, "dataset":Landroid/service/autofill/Dataset;
    if-nez v5, :cond_4

    .line 1428
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

    .line 1429
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1430
    return-void

    .line 1435
    .end local v5    # "dataset":Landroid/service/autofill/Dataset;
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    .line 1437
    const-string v6, "android.view.autofill.extra.AUTHENTICATION_RESULT"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    .line 1438
    .local v6, "result":Landroid/os/Parcelable;
    const-string v7, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 1439
    .local v7, "newClientState":Landroid/os/Bundle;
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_5

    .line 1440
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAuthenticationResultLocked(): result="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", clientState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", authenticationId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_5
    instance-of v8, v6, Landroid/service/autofill/FillResponse;

    if-eqz v8, :cond_6

    .line 1444
    const/16 v1, 0x390

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1445
    move-object v1, v6

    check-cast v1, Landroid/service/autofill/FillResponse;

    invoke-direct {p0, v2, v1, v7}, Lcom/android/server/autofill/Session;->replaceResponseLocked(Landroid/service/autofill/FillResponse;Landroid/service/autofill/FillResponse;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1446
    :cond_6
    instance-of v8, v6, Landroid/service/autofill/Dataset;

    if-eqz v8, :cond_b

    .line 1447
    if-eq v3, v4, :cond_a

    .line 1448
    const/16 v4, 0x466

    invoke-direct {p0, v0, v4}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1450
    if-eqz v7, :cond_8

    .line 1451
    sget-boolean v4, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v4, :cond_7

    const-string v4, "Updating client state from auth dataset"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_7
    iput-object v7, p0, Lcom/android/server/autofill/Session;->mClientState:Landroid/os/Bundle;

    .line 1454
    :cond_8
    move-object v1, v6

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 1455
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/autofill/Dataset;

    .line 1456
    .local v4, "oldDataset":Landroid/service/autofill/Dataset;
    invoke-static {v4}, Lcom/android/server/autofill/Session;->isPinnedDataset(Landroid/service/autofill/Dataset;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1457
    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1459
    :cond_9
    invoke-virtual {p0, v0, v3, v1, v5}, Lcom/android/server/autofill/Session;->autoFill(IILandroid/service/autofill/Dataset;Z)V

    .line 1460
    .end local v1    # "dataset":Landroid/service/autofill/Dataset;
    .end local v4    # "oldDataset":Landroid/service/autofill/Dataset;
    goto :goto_0

    .line 1461
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid index ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") for authentication id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/16 v1, 0x467

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    goto :goto_0

    .line 1467
    :cond_b
    if-eqz v6, :cond_c

    .line 1468
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "service returned invalid auth type: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_c
    const/16 v1, 0x468

    invoke-direct {p0, v0, v1}, Lcom/android/server/autofill/Session;->logAuthenticationStatusLocked(II)V

    .line 1472
    invoke-direct {p0, v0, v5}, Lcom/android/server/autofill/Session;->processNullResponseLocked(II)V

    .line 1474
    :goto_0
    return-void

    .line 1417
    .end local v3    # "datasetIdx":I
    .end local v6    # "result":Landroid/os/Parcelable;
    .end local v7    # "newClientState":Landroid/os/Bundle;
    :cond_d
    :goto_1
    const-string/jumbo v3, "no authenticated response"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->removeSelf()V

    .line 1419
    return-void
.end method

.method setAutofillFailureLocked(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;)V"
        }
    .end annotation

    .line 3172
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3173
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillId;

    .line 3174
    .local v1, "id":Landroid/view/autofill/AutofillId;
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/autofill/ViewState;

    .line 3175
    .local v2, "viewState":Lcom/android/server/autofill/ViewState;
    const-string v3, "AutofillSession"

    if-nez v2, :cond_0

    .line 3176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAutofillFailure(): no view for id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3177
    goto :goto_1

    .line 3179
    :cond_0
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 3180
    invoke-virtual {v2}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    .line 3181
    .local v4, "state":I
    or-int/lit16 v5, v4, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/autofill/ViewState;->setState(I)V

    .line 3182
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_1

    .line 3183
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

    .line 3172
    .end local v1    # "id":Landroid/view/autofill/AutofillId;
    .end local v2    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v4    # "state":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3186
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method setHasCallbackLocked(Z)V
    .locals 2
    .param p1, "hasIt"    # Z

    .line 1551
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1552
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

    .line 1554
    return-void

    .line 1556
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/autofill/Session;->mHasCallback:Z

    .line 1557
    return-void
.end method

.method public showSaveLocked()Z
    .locals 30

    .line 1972
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    .line 1973
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

    .line 1975
    return v13

    .line 1977
    :cond_0
    const-string/jumbo v0, "showSaveLocked(%s)"

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->getLastResponseLocked(Ljava/lang/String;)Landroid/service/autofill/FillResponse;

    move-result-object v14

    .line 1978
    .local v14, "response":Landroid/service/autofill/FillResponse;
    if-nez v14, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getSaveInfo()Landroid/service/autofill/SaveInfo;

    move-result-object v1

    :goto_0
    move-object v15, v1

    .line 1990
    .local v15, "saveInfo":Landroid/service/autofill/SaveInfo;
    const/4 v11, 0x1

    if-nez v15, :cond_3

    .line 1991
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

    .line 1992
    :cond_2
    return v11

    .line 1995
    :cond_3
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 1997
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

    .line 1998
    :cond_4
    return v13

    .line 2001
    :cond_5
    invoke-direct {v12, v15}, Lcom/android/server/autofill/Session;->createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;

    move-result-object v10

    .line 2004
    .local v10, "sanitizers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/service/autofill/InternalSanitizer;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v1

    .line 2006
    .local v9, "currentValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v8, v1

    .line 2008
    .local v8, "savableIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getRequiredIds()[Landroid/view/autofill/AutofillId;

    move-result-object v7

    .line 2009
    .local v7, "requiredIds":[Landroid/view/autofill/AutofillId;
    const/4 v1, 0x1

    .line 2010
    .local v1, "allRequiredAreNotEmpty":Z
    const/4 v2, 0x0

    .line 2013
    .local v2, "atLeastOneChanged":Z
    const/4 v3, 0x0

    .line 2014
    .local v3, "isUpdate":Z
    if-eqz v7, :cond_16

    .line 2015
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v7

    if-ge v4, v5, :cond_15

    .line 2016
    aget-object v5, v7, v4

    .line 2017
    .local v5, "id":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_6

    .line 2018
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

    .line 2019
    move/from16 v18, v1

    move/from16 v20, v2

    goto/16 :goto_8

    .line 2021
    :cond_6
    invoke-virtual {v8, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2022
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/ViewState;

    .line 2023
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v0, :cond_7

    .line 2024
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "showSaveLocked(): no ViewState for required "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "AutofillSession"

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    const/4 v1, 0x0

    .line 2026
    move v13, v1

    goto/16 :goto_a

    .line 2029
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2030
    .local v6, "value":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Landroid/view/autofill/AutofillValue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v18, v1

    goto :goto_4

    .line 2031
    :cond_9
    :goto_2
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 2032
    .local v13, "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_13

    .line 2033
    sget-boolean v17, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v17, :cond_a

    .line 2034
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

    .line 2033
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v1    # "allRequiredAreNotEmpty":Z
    :cond_a
    move/from16 v18, v1

    .line 2037
    .end local v1    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :goto_3
    move-object v6, v13

    .line 2047
    .end local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    :goto_4
    invoke-direct {v12, v10, v5, v6}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    .line 2048
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .local v1, "value":Landroid/view/autofill/AutofillValue;
    if-nez v1, :cond_c

    .line 2049
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_b

    .line 2050
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

    .line 2052
    :cond_b
    const/4 v6, 0x0

    .line 2053
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v6, "allRequiredAreNotEmpty":Z
    move v13, v6

    goto/16 :goto_a

    .line 2055
    .end local v6    # "allRequiredAreNotEmpty":Z
    .restart local v18    # "allRequiredAreNotEmpty":Z
    :cond_c
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ViewState;->setSanitizedValue(Landroid/view/autofill/AutofillValue;)V

    .line 2056
    invoke-virtual {v9, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2057
    invoke-virtual {v0}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2059
    .local v6, "filledValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v1, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 2060
    const/4 v11, 0x1

    .line 2061
    .local v11, "changed":Z
    if-nez v6, :cond_f

    .line 2063
    invoke-direct {v12, v5}, Lcom/android/server/autofill/Session;->getValueFromContextsLocked(Landroid/view/autofill/AutofillId;)Landroid/view/autofill/AutofillValue;

    move-result-object v13

    .line 2064
    .restart local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    if-eqz v13, :cond_e

    invoke-virtual {v13, v1}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 2065
    sget-boolean v19, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v19, :cond_d

    .line 2066
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

    .line 2065
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .restart local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_d
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 2069
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

    .line 2064
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    .restart local v11    # "changed":Z
    :cond_e
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 2071
    .end local v0    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v2    # "atLeastOneChanged":Z
    .end local v13    # "initialValue":Landroid/view/autofill/AutofillValue;
    .restart local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "atLeastOneChanged":Z
    :goto_6
    goto :goto_7

    .line 2072
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

    .line 2074
    :goto_7
    if-eqz v11, :cond_11

    .line 2075
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_10

    .line 2076
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

    .line 2079
    :cond_10
    const/4 v0, 0x1

    move v2, v0

    .end local v20    # "atLeastOneChanged":Z
    .local v0, "atLeastOneChanged":Z
    goto :goto_9

    .line 2074
    .end local v0    # "atLeastOneChanged":Z
    .restart local v20    # "atLeastOneChanged":Z
    :cond_11
    move/from16 v2, v20

    goto :goto_9

    .line 2059
    .end local v11    # "changed":Z
    .end local v19    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v20    # "atLeastOneChanged":Z
    .local v0, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v2    # "atLeastOneChanged":Z
    :cond_12
    move-object/from16 v19, v0

    move/from16 v20, v2

    .line 2015
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

    .line 2039
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

    .line 2040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "empty value for required "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_14
    const/4 v1, 0x0

    .line 2043
    .end local v18    # "allRequiredAreNotEmpty":Z
    .restart local v1    # "allRequiredAreNotEmpty":Z
    move v13, v1

    move/from16 v2, v20

    goto :goto_a

    .line 2015
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

    .line 2014
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

    .line 2085
    .end local v18    # "allRequiredAreNotEmpty":Z
    .local v13, "allRequiredAreNotEmpty":Z
    :goto_a
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getOptionalIds()[Landroid/view/autofill/AutofillId;

    move-result-object v11

    .line 2086
    .local v11, "optionalIds":[Landroid/view/autofill/AutofillId;
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_18

    .line 2087
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

    .line 2090
    :cond_18
    if-eqz v13, :cond_38

    .line 2096
    if-eqz v11, :cond_24

    if-eqz v2, :cond_19

    if-nez v3, :cond_24

    .line 2098
    :cond_19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    array-length v1, v11

    if-ge v0, v1, :cond_23

    .line 2099
    aget-object v1, v11, v0

    .line 2100
    .local v1, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v8, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2101
    iget-object v4, v12, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/autofill/ViewState;

    .line 2102
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    if-nez v4, :cond_1a

    .line 2103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no ViewState for optional "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    move/from16 v18, v2

    move/from16 v19, v3

    goto/16 :goto_10

    .line 2106
    :cond_1a
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_20

    .line 2107
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v5

    .line 2108
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    invoke-direct {v12, v10, v1, v5}, Lcom/android/server/autofill/Session;->getSanitizedValue(Landroid/util/ArrayMap;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;)Landroid/view/autofill/AutofillValue;

    move-result-object v6

    .line 2109
    .restart local v6    # "value":Landroid/view/autofill/AutofillValue;
    if-nez v6, :cond_1c

    .line 2110
    sget-boolean v18, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v18, :cond_1b

    .line 2111
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

    .line 2110
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

    .line 2116
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

    .line 2117
    invoke-virtual {v4}, Lcom/android/server/autofill/ViewState;->getAutofilledValue()Landroid/view/autofill/AutofillValue;

    move-result-object v2

    .line 2118
    .local v2, "filledValue":Landroid/view/autofill/AutofillValue;
    if-eqz v6, :cond_1f

    invoke-virtual {v6, v2}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 2119
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_1d

    .line 2120
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

    .line 2119
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_1d
    move-object/from16 v20, v4

    .line 2123
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    :goto_d
    if-eqz v2, :cond_1e

    .line 2124
    const/4 v3, 0x1

    .end local v19    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    goto :goto_e

    .line 2123
    .end local v3    # "isUpdate":Z
    .restart local v19    # "isUpdate":Z
    :cond_1e
    move/from16 v3, v19

    .line 2126
    .end local v19    # "isUpdate":Z
    .restart local v3    # "isUpdate":Z
    :goto_e
    const/4 v4, 0x1

    move v2, v4

    .end local v18    # "atLeastOneChanged":Z
    .local v4, "atLeastOneChanged":Z
    goto :goto_f

    .line 2118
    .end local v3    # "isUpdate":Z
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    .local v4, "viewState":Lcom/android/server/autofill/ViewState;
    .restart local v18    # "atLeastOneChanged":Z
    .restart local v19    # "isUpdate":Z
    :cond_1f
    move-object/from16 v20, v4

    .line 2128
    .end local v2    # "filledValue":Landroid/view/autofill/AutofillValue;
    .end local v4    # "viewState":Lcom/android/server/autofill/ViewState;
    .end local v5    # "currentValue":Landroid/view/autofill/AutofillValue;
    .end local v6    # "value":Landroid/view/autofill/AutofillValue;
    .restart local v20    # "viewState":Lcom/android/server/autofill/ViewState;
    move/from16 v2, v18

    move/from16 v3, v19

    .end local v18    # "atLeastOneChanged":Z
    .end local v19    # "isUpdate":Z
    .local v2, "atLeastOneChanged":Z
    .restart local v3    # "isUpdate":Z
    :goto_f
    goto :goto_11

    .line 2130
    .end local v20    # "viewState":Lcom/android/server/autofill/ViewState;
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

    .line 2131
    .local v2, "initialValue":Landroid/view/autofill/AutofillValue;
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_21

    .line 2132
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

    .line 2135
    :cond_21
    if-eqz v2, :cond_22

    .line 2136
    invoke-virtual {v9, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
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

    .line 2141
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

    .line 2142
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_25

    .line 2143
    const-string v0, "AutofillSession"

    const-string v1, "at least one field changed, validate fields for save UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_25
    invoke-virtual {v15}, Landroid/service/autofill/SaveInfo;->getValidator()Landroid/service/autofill/InternalValidator;

    move-result-object v6

    .line 2146
    .local v6, "validator":Landroid/service/autofill/InternalValidator;
    if-eqz v6, :cond_28

    .line 2147
    const/16 v0, 0x46d

    invoke-direct {v12, v0}, Lcom/android/server/autofill/Session;->newLogMaker(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 2150
    .local v1, "log":Landroid/metrics/LogMaker;
    :try_start_0
    invoke-virtual {v6, v12}, Landroid/service/autofill/InternalValidator;->isValid(Landroid/service/autofill/ValueFinder;)Z

    move-result v0

    .line 2151
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

    .line 2152
    :cond_26
    if-eqz v0, :cond_27

    .line 2153
    const/16 v2, 0xa

    goto :goto_13

    .line 2154
    :cond_27
    const/4 v2, 0x5

    .line 2152
    :goto_13
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2160
    nop

    .line 2162
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2163
    if-nez v0, :cond_28

    .line 2164
    const-string v2, "AutofillSession"

    const-string/jumbo v3, "not showing save UI because fields failed validation"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2165
    const/4 v2, 0x1

    return v2

    .line 2155
    .end local v0    # "isValid":Z
    :catch_0
    move-exception v0

    .line 2156
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AutofillSession"

    const-string v3, "Not showing save UI because validation failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2157
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2158
    iget-object v2, v12, Lcom/android/server/autofill/Session;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2159
    const/4 v2, 0x1

    return v2

    .line 2171
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "log":Landroid/metrics/LogMaker;
    :cond_28
    invoke-virtual {v14}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v5

    .line 2172
    .local v5, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    if-eqz v5, :cond_32

    .line 2173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_31

    .line 2174
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/Dataset;

    .line 2175
    .local v1, "dataset":Landroid/service/autofill/Dataset;
    nop

    .line 2176
    invoke-static {v1}, Lcom/android/server/autofill/Helper;->getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 2177
    .local v2, "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_29

    .line 2178
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

    .line 2181
    :cond_29
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_15
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2f

    .line 2182
    invoke-virtual {v8, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    .line 2183
    .local v4, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v9, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v5

    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local v21, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v5, v20

    check-cast v5, Landroid/view/autofill/AutofillValue;

    .line 2184
    .local v5, "currentValue":Landroid/view/autofill/AutofillValue;
    if-nez v5, :cond_2b

    .line 2185
    sget-boolean v20, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v20, :cond_2a

    .line 2186
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

    .line 2185
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

    .line 2190
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

    .line 2191
    .local v6, "datasetValue":Landroid/view/autofill/AutofillValue;
    invoke-virtual {v5, v6}, Landroid/view/autofill/AutofillValue;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 2192
    sget-boolean v7, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v7, :cond_2c

    .line 2193
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

    .line 2192
    .end local v23    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    .restart local v2    # "datasetValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;>;"
    :cond_2c
    move-object/from16 v23, v2

    .line 2173
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

    .line 2198
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

    .line 2181
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

    .line 2200
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

    .line 2201
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

    .line 2204
    :cond_30
    const/16 v17, 0x1

    return v17

    .line 2173
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

    .line 2172
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

    .line 2208
    .end local v5    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .end local v6    # "validator":Landroid/service/autofill/InternalValidator;
    .end local v7    # "requiredIds":[Landroid/view/autofill/AutofillId;
    .restart local v20    # "validator":Landroid/service/autofill/InternalValidator;
    .restart local v21    # "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .restart local v22    # "requiredIds":[Landroid/view/autofill/AutofillId;
    :goto_18
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_33

    .line 2209
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

    .line 2214
    :cond_33
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$NtvZwhlT1c4eLjg2qI6EER2oCtY;

    invoke-static {v1, v12}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2216
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getClient()Landroid/view/autofill/IAutoFillManagerClient;

    move-result-object v7

    .line 2217
    .local v7, "client":Landroid/view/autofill/IAutoFillManagerClient;
    new-instance v0, Lcom/android/server/autofill/ui/PendingUi;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iget v2, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-direct {v0, v1, v2, v7}, Lcom/android/server/autofill/ui/PendingUi;-><init>(Landroid/os/IBinder;ILandroid/view/autofill/IAutoFillManagerClient;)V

    iput-object v0, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    .line 2221
    iget-object v1, v12, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2222
    :try_start_1
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v23, v0

    .line 2223
    .local v23, "serviceLabel":Ljava/lang/CharSequence;
    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServiceIconLocked()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v24, v0

    .line 2224
    .local v24, "serviceIcon":Landroid/graphics/drawable/Drawable;
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2225
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

    .line 2229
    :cond_34
    invoke-direct/range {p0 .. p0}, Lcom/android/server/autofill/Session;->getUiForShowing()Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v1

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mService:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 2230
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getServicePackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v12, Lcom/android/server/autofill/Session;->mComponentName:Landroid/content/ComponentName;

    iget-object v6, v12, Lcom/android/server/autofill/Session;->mPendingSaveUi:Lcom/android/server/autofill/ui/PendingUi;

    iget-boolean v5, v12, Lcom/android/server/autofill/Session;->mCompatMode:Z

    .line 2229
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

    .line 2232
    if-eqz v14, :cond_35

    .line 2234
    :try_start_2
    iget v0, v12, Lcom/android/server/autofill/Session;->id:I

    invoke-interface {v14, v0, v15}, Landroid/view/autofill/IAutoFillManagerClient;->setSaveUiState(IZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2237
    goto :goto_19

    .line 2235
    :catch_1
    move-exception v0

    .line 2236
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

    .line 2239
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_19
    iput-boolean v15, v12, Lcom/android/server/autofill/Session;->mIsSaving:Z

    .line 2240
    const/4 v1, 0x0

    return v1

    .line 2225
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

    .line 2226
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

    .line 2227
    return v15

    .line 2224
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

    .line 2141
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

    .line 2090
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

    .line 2244
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

    .line 2245
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

    .line 2249
    :cond_39
    return v15
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 4
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1351
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1352
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 1353
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

    .line 1355
    monitor-exit v0

    return-void

    .line 1357
    :cond_0
    if-nez p2, :cond_1

    .line 1358
    invoke-virtual {p0}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    .line 1360
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Session$Fs9zdJwELk-9rAM3RiY6AyBKswI;

    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1364
    return-void

    .line 1360
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startIntentSenderAndFinishSession(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 1345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/autofill/Session;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 1346
    return-void
.end method

.method switchActivity(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "newActivity"    # Landroid/os/IBinder;
    .param p2, "newClient"    # Landroid/os/IBinder;

    .line 895
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 896
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 897
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

    .line 899
    monitor-exit v0

    return-void

    .line 901
    :cond_0
    iput-object p1, p0, Lcom/android/server/autofill/Session;->mActivityToken:Landroid/os/IBinder;

    .line 902
    invoke-direct {p0, p2}, Lcom/android/server/autofill/Session;->setClientLocked(Landroid/os/IBinder;)V

    .line 905
    invoke-direct {p0}, Lcom/android/server/autofill/Session;->updateTrackedIdsLocked()V

    .line 906
    monitor-exit v0

    .line 907
    return-void

    .line 906
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 3621
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

    .line 2642
    iget-boolean v0, p0, Lcom/android/server/autofill/Session;->mDestroyed:Z

    const-string v1, "AutofillSession"

    if-eqz v0, :cond_0

    .line 2643
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

    .line 2645
    return-void

    .line 2647
    :cond_0
    const/4 v0, 0x5

    const/4 v2, 0x1

    if-ne p4, v0, :cond_2

    .line 2648
    iput-boolean v2, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    .line 2649
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    .line 2650
    const-string v0, "Set the response has expired."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2652
    :cond_1
    return-void

    .line 2655
    :cond_2
    iget v3, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {p1, v3}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 2656
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string/jumbo v4, "updateLocked("

    if-eqz v3, :cond_3

    .line 2657
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "): id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    invoke-static {p4}, Lcom/android/server/autofill/Session;->actionAsString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2657
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    :cond_3
    iget-object v3, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/ViewState;

    .line 2661
    .local v3, "viewState":Lcom/android/server/autofill/ViewState;
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_4

    .line 2662
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): mCurrentViewId="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mExpiredResponse="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mExpiredResponse:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", viewState="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_4
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v3, :cond_b

    .line 2667
    if-eq p4, v2, :cond_7

    if-eq p4, v4, :cond_7

    if-ne p4, v5, :cond_5

    goto :goto_0

    .line 2683
    :cond_5
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_6

    const-string v0, "Ignoring specific action when viewState=null"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    :cond_6
    return-void

    .line 2669
    :cond_7
    :goto_0
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating viewState for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session;->isIgnoredLocked(Landroid/view/autofill/AutofillId;)Z

    move-result v6

    .line 2671
    .local v6, "isIgnored":Z
    new-instance v7, Lcom/android/server/autofill/ViewState;

    .line 2672
    if-eqz v6, :cond_9

    const/16 v8, 0x80

    goto :goto_1

    :cond_9
    move v8, v2

    :goto_1
    invoke-direct {v7, p1, p0, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    move-object v3, v7

    .line 2673
    iget-object v7, p0, Lcom/android/server/autofill/Session;->mViewStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    if-eqz v6, :cond_b

    .line 2679
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked(): ignoring view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2680
    :cond_a
    return-void

    .line 2688
    .end local v6    # "isIgnored":Z
    :cond_b
    if-eq p4, v2, :cond_26

    if-eq p4, v5, :cond_19

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eq p4, v5, :cond_17

    if-eq p4, v4, :cond_c

    .line 2794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateLocked(): unknown action: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2696
    :cond_c
    iget-boolean v4, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v4, :cond_16

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v4

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_16

    .line 2698
    iget-object v4, p0, Lcom/android/server/autofill/Session;->mUrlBar:Landroid/app/assist/AssistStructure$ViewNode;

    if-nez v4, :cond_d

    move-object v4, v6

    goto :goto_2

    .line 2699
    :cond_d
    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_2
    nop

    .line 2700
    .local v4, "currentUrl":Ljava/lang/String;
    const/4 v5, 0x0

    if-nez v4, :cond_e

    .line 2702
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "URL bar value changed, but current value is null"

    invoke-direct {p0, v6, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2703
    return-void

    .line 2705
    :cond_e
    if-eqz p3, :cond_15

    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v7

    if-nez v7, :cond_f

    goto :goto_3

    .line 2710
    :cond_f
    invoke-virtual {p3}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2711
    .local v2, "newUrl":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 2712
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_10

    const-string v0, "Ignoring change on URL bar as it\'s the same"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_10
    return-void

    .line 2715
    :cond_11
    iget-boolean v5, p0, Lcom/android/server/autofill/Session;->mSaveOnAllViewsInvisible:Z

    if-eqz v5, :cond_13

    .line 2719
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_12

    .line 2720
    const-string v0, "Ignoring change on URL because session will finish when views are gone"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_12
    return-void

    .line 2725
    :cond_13
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v5, :cond_14

    const-string v5, "Finishing session because URL bar changed"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/Session;->forceRemoveSelfLocked(I)V

    .line 2727
    return-void

    .line 2707
    .end local v2    # "newUrl":Ljava/lang/String;
    :cond_15
    :goto_3
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p3, v0, v5

    const-string v1, "URL bar value changed to null or non-text: %s"

    invoke-direct {p0, v6, v1, v0}, Lcom/android/server/autofill/Session;->wtf(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2708
    return-void

    .line 2729
    .end local v4    # "currentUrl":Ljava/lang/String;
    :cond_16
    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getCurrentValue()Landroid/view/autofill/AutofillValue;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2730
    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/autofill/Session;->logIfViewClearedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;)V

    .line 2731
    invoke-direct {p0, p1, p3, v3, p5}, Lcom/android/server/autofill/Session;->updateViewStateAndUiOnValueChangedLocked(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Lcom/android/server/autofill/ViewState;I)V

    goto/16 :goto_5

    .line 2783
    :cond_17
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2784
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    :cond_18
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-virtual {v0, p0}, Lcom/android/server/autofill/ui/AutoFillUI;->hideFillUi(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 2786
    invoke-direct {p0, v3}, Lcom/android/server/autofill/Session;->hideAugmentedAutofillLocked(Lcom/android/server/autofill/ViewState;)V

    .line 2789
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mInlineSessionController:Lcom/android/server/autofill/AutofillInlineSessionController;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSessionController;->resetInlineFillUiLocked()V

    .line 2790
    iput-object v6, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    goto/16 :goto_5

    .line 2735
    :cond_19
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1a

    if-eqz p2, :cond_1a

    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entered on virtual child "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    :cond_1a
    iget-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2741
    .local v0, "isSameViewEntered":Z
    iget-object v2, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v2, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2742
    if-eqz p3, :cond_1b

    .line 2743
    invoke-virtual {v3, p3}, Lcom/android/server/autofill/ViewState;->setCurrentValue(Landroid/view/autofill/AutofillValue;)V

    .line 2746
    :cond_1b
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mCompatMode:Z

    if-eqz v2, :cond_1d

    invoke-virtual {v3}, Lcom/android/server/autofill/ViewState;->getState()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1d

    .line 2747
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring VIEW_ENTERED on URL BAR (id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :cond_1c
    return-void

    .line 2751
    :cond_1d
    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_23

    .line 2753
    iget-object v2, p0, Lcom/android/server/autofill/Session;->mAugmentedAutofillableIds:Ljava/util/ArrayList;

    const-string/jumbo v4, "skip augmented autofill for same view."

    if-eqz v2, :cond_21

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2757
    if-nez v0, :cond_1f

    .line 2758
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_1e

    const-string/jumbo v2, "trigger augmented autofill."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    :cond_1e
    invoke-direct {p0, p5}, Lcom/android/server/autofill/Session;->triggerAugmentedAutofillLocked(I)Ljava/lang/Runnable;

    goto :goto_4

    .line 2761
    :cond_1f
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_20

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2763
    :cond_20
    :goto_4
    return-void

    .line 2764
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/autofill/Session;->mForAugmentedAutofillOnly:Z

    if-eqz v2, :cond_23

    if-eqz v0, :cond_23

    .line 2766
    sget-boolean v2, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v2, :cond_22

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_22
    return-void

    .line 2771
    :cond_23
    invoke-direct {p0, p1, v3, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseOnViewEnteredIfNecessaryLocked(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2772
    return-void

    .line 2775
    :cond_24
    if-eqz v0, :cond_25

    .line 2776
    return-void

    .line 2780
    :cond_25
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2781
    goto :goto_5

    .line 2691
    .end local v0    # "isSameViewEntered":Z
    :cond_26
    iget-object v0, v3, Lcom/android/server/autofill/ViewState;->id:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    .line 2692
    invoke-virtual {v3, p3, p2, p5}, Lcom/android/server/autofill/ViewState;->update(Landroid/view/autofill/AutofillValue;Landroid/graphics/Rect;I)V

    .line 2693
    const/16 v0, 0x10

    invoke-direct {p0, v3, v0, p5}, Lcom/android/server/autofill/Session;->requestNewFillResponseLocked(Lcom/android/server/autofill/ViewState;II)V

    .line 2694
    nop

    .line 2796
    :cond_27
    :goto_5
    return-void
.end method
