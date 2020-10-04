.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskStack$NPerlV3pAikqmRCCx3JO0qCLTyw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/TaskStack;->lambda$onAnimationStart$2(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
