.class Lcom/oneplus/sdk/utils/OpAppTracker$MyLog;
.super Ljava/lang/Object;
.source "OpAppTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/sdk/utils/OpAppTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLog"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .line 112
    invoke-static {p0, p1}, Lcom/oneplus/sdk/utils/OpAppTracker$MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "log"    # Ljava/lang/String;

    .line 117
    return-void
.end method
