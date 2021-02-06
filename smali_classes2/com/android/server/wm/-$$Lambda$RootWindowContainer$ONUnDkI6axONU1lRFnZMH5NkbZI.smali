.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ONUnDkI6axONU1lRFnZMH5NkbZI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Lcom/android/server/am/AppTimeTracker;

    invoke-static {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->lambda$ONUnDkI6axONU1lRFnZMH5NkbZI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/am/AppTimeTracker;)V

    return-void
.end method
