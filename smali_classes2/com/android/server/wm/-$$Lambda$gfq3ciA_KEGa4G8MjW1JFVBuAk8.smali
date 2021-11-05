.class public final synthetic Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$gfq3ciA_KEGa4G8MjW1JFVBuAk8;

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

    check-cast p1, Landroid/app/ActivityManagerInternal;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/app/ActivityManagerInternal;->startActivityAsUserEmpty(Landroid/os/Bundle;)I

    return-void
.end method
