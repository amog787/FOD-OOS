.class public final synthetic Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;

    invoke-direct {v0}, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;-><init>()V

    sput-object v0, Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;->INSTANCE:Lcom/android/server/integrity/-$$Lambda$AppIntegrityManagerServiceImpl$ct2NSvc_tnI1IXBlQD5h7WqKow4;

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

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/android/server/integrity/AppIntegrityManagerServiceImpl;->lambda$extractSourceStamp$1(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
