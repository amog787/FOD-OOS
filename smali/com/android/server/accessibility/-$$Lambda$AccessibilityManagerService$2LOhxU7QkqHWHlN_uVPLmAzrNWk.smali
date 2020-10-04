.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$2LOhxU7QkqHWHlN_uVPLmAzrNWk;

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

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$2LOhxU7QkqHWHlN_uVPLmAzrNWk(Lcom/android/server/accessibility/AccessibilityManagerService;I)V

    return-void
.end method
