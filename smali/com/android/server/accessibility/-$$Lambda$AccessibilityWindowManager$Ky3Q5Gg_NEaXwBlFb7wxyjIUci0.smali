.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityWindowManager$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/accessibility/AccessibilityWindowManager;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->lambda$Ky3Q5Gg_NEaXwBlFb7wxyjIUci0(Lcom/android/server/accessibility/AccessibilityWindowManager;II)V

    return-void
.end method
