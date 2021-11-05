.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiPredicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;->INSTANCE:Lcom/android/server/wm/-$$Lambda$TaskDisplayArea$XcH01_sSElIBkfdzcfbGZuAMtmk;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->lambda$XcH01_sSElIBkfdzcfbGZuAMtmk(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p1

    return p1
.end method
