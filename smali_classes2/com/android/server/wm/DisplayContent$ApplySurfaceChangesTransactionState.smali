.class final Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ApplySurfaceChangesTransactionState"
.end annotation


# instance fields
.field displayHasContent:Z

.field obscured:Z

.field preferMinimalPostProcessing:Z

.field preferredModeId:I

.field preferredRefreshRate:F

.field syswin:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/DisplayContent$1;

    .line 4638
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 2

    .line 4647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 4648
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 4649
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 4650
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    .line 4651
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 4652
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 4653
    return-void
.end method
