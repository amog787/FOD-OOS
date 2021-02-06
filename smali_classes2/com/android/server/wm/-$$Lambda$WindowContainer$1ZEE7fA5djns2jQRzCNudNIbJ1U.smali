.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$1ZEE7fA5djns2jQRzCNudNIbJ1U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$6(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
