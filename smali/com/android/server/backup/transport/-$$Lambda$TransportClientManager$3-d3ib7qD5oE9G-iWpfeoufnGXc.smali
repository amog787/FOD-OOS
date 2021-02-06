.class public final synthetic Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;

    invoke-direct {v0}, Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;-><init>()V

    sput-object v0, Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;->INSTANCE:Lcom/android/server/backup/transport/-$$Lambda$TransportClientManager$3-d3ib7qD5oE9G-iWpfeoufnGXc;

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

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/backup/transport/TransportClientManager;->lambda$3-d3ib7qD5oE9G-iWpfeoufnGXc(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
