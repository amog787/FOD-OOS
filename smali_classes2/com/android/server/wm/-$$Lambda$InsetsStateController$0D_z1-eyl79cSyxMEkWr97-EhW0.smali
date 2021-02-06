.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;->INSTANCE:Lcom/android/server/wm/-$$Lambda$InsetsStateController$0D_z1-eyl79cSyxMEkWr97-EhW0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p1}, Lcom/android/server/wm/InsetsStateController;->lambda$addToControlMaps$3(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
