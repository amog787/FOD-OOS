.class public final synthetic Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;->INSTANCE:Lcom/android/server/am/-$$Lambda$jVSWDZTj55yxOQmZSLdNsbUkMb4;

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

    check-cast p1, Landroid/content/pm/SharedLibraryInfo;

    invoke-virtual {p1}, Landroid/content/pm/SharedLibraryInfo;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
