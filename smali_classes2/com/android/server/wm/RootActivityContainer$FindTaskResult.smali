.class Lcom/android/server/wm/RootActivityContainer$FindTaskResult;
.super Ljava/lang/Object;
.source "RootActivityContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RootActivityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FindTaskResult"
.end annotation


# instance fields
.field mIdealMatch:Z

.field mRecord:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 217
    return-void
.end method

.method setTo(Lcom/android/server/wm/RootActivityContainer$FindTaskResult;)V
    .locals 1
    .param p1, "result"    # Lcom/android/server/wm/RootActivityContainer$FindTaskResult;

    .line 220
    iget-object v0, p1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    iput-object v0, p0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mRecord:Lcom/android/server/wm/ActivityRecord;

    .line 221
    iget-boolean v0, p1, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootActivityContainer$FindTaskResult;->mIdealMatch:Z

    .line 222
    return-void
.end method
