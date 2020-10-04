.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    invoke-direct {v0}, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;->INSTANCE:Lcom/android/server/inputmethod/-$$Lambda$AmbbXLEJhTNO0thyboUFa1hBy_8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    check-cast p2, Landroid/os/Binder;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V

    return-void
.end method
