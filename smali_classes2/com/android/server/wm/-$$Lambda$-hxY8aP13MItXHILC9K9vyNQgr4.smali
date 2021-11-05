.class public final synthetic Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$-hxY8aP13MItXHILC9K9vyNQgr4;

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

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    return-void
.end method
