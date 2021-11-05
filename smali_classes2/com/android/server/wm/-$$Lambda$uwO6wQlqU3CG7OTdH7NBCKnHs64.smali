.class public final synthetic Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;->INSTANCE:Lcom/android/server/wm/-$$Lambda$uwO6wQlqU3CG7OTdH7NBCKnHs64;

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

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method
