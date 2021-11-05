.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$5fbF65VSmaJkPHxEhceOGTat7JE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/RootWindowContainer;

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    check-cast p3, Lcom/android/server/wm/WindowProcessController;

    check-cast p4, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/RootWindowContainer;->lambda$5fbF65VSmaJkPHxEhceOGTat7JE(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
