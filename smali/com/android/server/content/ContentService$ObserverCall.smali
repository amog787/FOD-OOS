.class public final Lcom/android/server/content/ContentService$ObserverCall;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverCall"
.end annotation


# instance fields
.field final mNode:Lcom/android/server/content/ContentService$ObserverNode;

.field final mObserver:Landroid/database/IContentObserver;

.field final mObserverUserId:I

.field final mPid:I

.field final mSelfChange:Z

.field final mUid:I


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZIII)V
    .locals 0
    .param p1, "node"    # Lcom/android/server/content/ContentService$ObserverNode;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "selfChange"    # Z
    .param p4, "observerUserId"    # I
    .param p5, "uid"    # I
    .param p6, "pid"    # I

    .line 667
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 670
    iput-object p2, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    .line 671
    iput-boolean p3, p0, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    .line 672
    iput p4, p0, Lcom/android/server/content/ContentService$ObserverCall;->mObserverUserId:I

    .line 675
    iput p5, p0, Lcom/android/server/content/ContentService$ObserverCall;->mUid:I

    .line 676
    iput p6, p0, Lcom/android/server/content/ContentService$ObserverCall;->mPid:I

    .line 678
    return-void
.end method
