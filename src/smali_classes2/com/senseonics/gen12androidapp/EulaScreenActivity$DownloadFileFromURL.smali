.class Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;
.super Landroid/os/AsyncTask;
.source "EulaScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/EulaScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadFileFromURL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private response:Ljava/lang/String;

.field final synthetic this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;


# direct methods
.method constructor <init>(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 177
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 187
    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    const-string v1, "https://www.eversensedms.com/EULA/"

    invoke-static {p1, v1, v0}, Lcom/senseonics/util/Utils;->getLatestFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->response:Ljava/lang/String;

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->response:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->response:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    sget-object v1, Lcom/senseonics/util/Utils$MLCheckResult;->NotConnectedToWifi:Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    sget-object v1, Lcom/senseonics/util/Utils$MLCheckResult;->ServerError:Lcom/senseonics/util/Utils$MLCheckResult;

    invoke-virtual {v0, v1}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->displayCheckingResult(Lcom/senseonics/util/Utils$MLCheckResult;)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {v0}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->access$300(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-virtual {v2}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "//"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/senseonics/gen12androidapp/EulaScreenActivity$DownloadFileFromURL;->this$0:Lcom/senseonics/gen12androidapp/EulaScreenActivity;

    invoke-static {v2}, Lcom/senseonics/gen12androidapp/EulaScreenActivity;->access$200(Lcom/senseonics/gen12androidapp/EulaScreenActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 203
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 180
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
