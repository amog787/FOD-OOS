.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$SP6uGJNthzczgi990Xl2SJhDOMs;

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

    check-cast p1, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;

    check-cast p2, Landroid/graphics/Region;

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController$DisplayMagnification;->updateMagnificationRegion(Landroid/graphics/Region;)V

    return-void
.end method
