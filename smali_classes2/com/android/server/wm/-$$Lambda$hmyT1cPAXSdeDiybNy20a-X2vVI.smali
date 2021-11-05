.class public final synthetic Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$hmyT1cPAXSdeDiybNy20a-X2vVI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result p1

    return p1
.end method
