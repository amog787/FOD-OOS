.class public final synthetic Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$6CGpg-bvz7DUll5JEZwd1mT8fPQ;

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

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->requestRedrawForSync()V

    return-void
.end method
