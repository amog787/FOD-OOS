.class public final synthetic Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;->INSTANCE:Lcom/android/server/wm/-$$Lambda$MGgYXq0deCsjjGP-28PM6ahiI2U;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p1}, Lcom/android/server/wm/WindowProcessListener;->appDied()V

    return-void
.end method
