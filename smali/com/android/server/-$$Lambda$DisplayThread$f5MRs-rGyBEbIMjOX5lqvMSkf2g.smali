.class public final synthetic Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;->INSTANCE:Lcom/android/server/-$$Lambda$DisplayThread$f5MRs-rGyBEbIMjOX5lqvMSkf2g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/android/server/DisplayThread;->lambda$dispose$0()V

    return-void
.end method
