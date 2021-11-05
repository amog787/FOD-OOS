.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

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

    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
