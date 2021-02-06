.class public final synthetic Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;

    invoke-direct {v0}, Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;-><init>()V

    sput-object v0, Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;->INSTANCE:Lcom/android/server/people/data/-$$Lambda$AuvQl7mzpTuCl6KGI2jmWCB7WvI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method
