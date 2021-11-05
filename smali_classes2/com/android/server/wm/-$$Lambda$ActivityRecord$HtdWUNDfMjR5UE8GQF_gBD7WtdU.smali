.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$HtdWUNDfMjR5UE8GQF_gBD7WtdU;

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

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showAllWindowsLocked$8(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
