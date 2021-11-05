.class public final synthetic Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;->INSTANCE:Lcom/android/server/wm/-$$Lambda$LI60v4Y5Me6khV12IZ-zEQtSx7A;

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

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/server/wm/WindowProcessListener;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    return-void
.end method
