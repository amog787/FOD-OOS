.class public final synthetic Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$VDG7MoD_7v7qIdkguJXls8nmhGU;

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

    check-cast p2, Ljava/lang/String;

    invoke-interface {p1, p2}, Lcom/android/server/wm/WindowProcessListener;->appDied(Ljava/lang/String;)V

    return-void
.end method
