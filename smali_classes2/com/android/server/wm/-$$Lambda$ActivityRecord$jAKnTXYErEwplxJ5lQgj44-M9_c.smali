.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;->INSTANCE:Lcom/android/server/wm/-$$Lambda$ActivityRecord$jAKnTXYErEwplxJ5lQgj44-M9_c;

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

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$jAKnTXYErEwplxJ5lQgj44-M9_c(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method
