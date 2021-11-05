.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AbiCM6mjSOPpIPMT9CFGL4UAcKY;

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

    check-cast p1, Lcom/android/server/accessibility/MagnificationController;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(IZ)Z

    return-void
.end method
