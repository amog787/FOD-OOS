.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$iE9JplYHP8mrOjjadf_Oh8XKSE4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    check-cast p5, Ljava/lang/Integer;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->requestRectangleOnScreen(IIII)V

    return-void
.end method
