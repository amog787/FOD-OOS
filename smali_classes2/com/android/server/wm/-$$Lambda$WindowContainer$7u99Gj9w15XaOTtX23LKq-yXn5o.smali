.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowContainer$7u99Gj9w15XaOTtX23LKq-yXn5o;

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

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->lambda$getTopActivity$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    return p1
.end method
