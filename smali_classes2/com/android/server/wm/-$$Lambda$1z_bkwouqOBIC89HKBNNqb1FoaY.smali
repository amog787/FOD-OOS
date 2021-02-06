.class public final synthetic Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;->INSTANCE:Lcom/android/server/wm/-$$Lambda$1z_bkwouqOBIC89HKBNNqb1FoaY;

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

    check-cast p1, Lcom/android/server/wm/DisplayPolicy;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayPolicy;->setPointerLocationEnabled(Z)V

    return-void
.end method
