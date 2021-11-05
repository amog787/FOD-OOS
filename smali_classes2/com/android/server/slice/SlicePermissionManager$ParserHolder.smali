.class Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
.super Ljava/lang/Object;
.source "SlicePermissionManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SlicePermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParserHolder"
.end annotation


# instance fields
.field private input:Ljava/io/InputStream;

.field private parser:Lorg/xmlpull/v1/XmlPullParser;

.field final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method private constructor <init>(Lcom/android/server/slice/SlicePermissionManager;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/slice/SlicePermissionManager;
    .param p2, "x1"    # Lcom/android/server/slice/SlicePermissionManager$1;

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;-><init>(Lcom/android/server/slice/SlicePermissionManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 451
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Lorg/xmlpull/v1/XmlPullParser;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .param p1, "x1"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 451
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 451
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/slice/SlicePermissionManager$ParserHolder;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .param p1, "x1"    # Ljava/io/InputStream;

    .line 451
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 459
    return-void
.end method
