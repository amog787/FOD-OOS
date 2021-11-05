.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$XnMxHSlbhK9x7qGQcZpHSkPOQvQ;

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

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->lambda$setVisibility$6(Lcom/android/server/wm/WindowState;)V

    return-void
.end method
