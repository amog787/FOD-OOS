.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$7Z9gsguOLtfXssJUALjgEsOLZoE;

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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/DisplayContent;->lambda$hasSecureWindowOnScreen$20(Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
